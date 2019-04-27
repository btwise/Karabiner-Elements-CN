#import "KarabinerKit/KarabinerKit.h"
#import "libkrbn.h"

static libkrbn_version_monitor* libkrbn_version_monitor_ = NULL;

static void version_changed_callback(void* refcon) {
  [KarabinerKit relaunch];
}

@implementation KarabinerKit

+ (void)setup {
  static dispatch_once_t once;

  dispatch_once(&once, ^{
    // initialize managers
    [KarabinerKitConfigurationManager sharedManager];
    [KarabinerKitDeviceManager sharedManager];

    libkrbn_version_monitor_initialize(&libkrbn_version_monitor_, version_changed_callback, NULL);
  });
}

+ (void)exitIfAnotherProcessIsRunning:(const char*)pidFileName {
  if (!libkrbn_lock_single_application_with_user_pid_file(pidFileName)) {
    NSLog(@"退出，因为另一个进程正在运行.");
    [NSApp terminate:nil];
  }
}

+ (void)endAllAttachedSheets:(NSWindow*)window {
  for (;;) {
    NSWindow* sheet = window.attachedSheet;
    if (!sheet) {
      break;
    }

    [self endAllAttachedSheets:sheet];
    [window endSheet:sheet];
  }
}

+ (void)observeConsoleUserServerIsDisabledNotification {
  NSString* name = [NSString stringWithUTF8String:libkrbn_get_distributed_notification_console_user_server_is_disabled()];
  NSString* object = [NSString stringWithUTF8String:libkrbn_get_distributed_notification_observed_object()];

  [[NSDistributedNotificationCenter defaultCenter] addObserver:self
                                                      selector:@selector(consoleUserServerIsDisabledCallback)
                                                          name:name
                                                        object:object
                                            suspensionBehavior:NSNotificationSuspensionBehaviorDeliverImmediately];
}

+ (void)consoleUserServerIsDisabledCallback {
  [NSApp terminate:nil];
}

+ (void)relaunch {
  libkrbn_unlock_single_application();

  for (int i = 0; i < 5; ++i) {
    @try {
      [NSTask launchedTaskWithLaunchPath:[[NSBundle mainBundle] executablePath] arguments:@[]];
      break;
    } @catch (NSException* exception) {
      NSLog(@"KarabinerKit重启动错误 %@", exception);
      [NSThread sleepForTimeInterval:1.0];
    }
  }

  [NSApp terminate:nil];
}

+ (BOOL)quitKarabinerWithConfirmation {
  NSAlert* alert = [NSAlert new];
  alert.messageText = @"你确定要退出Karabiner-Elements吗?";
  alert.informativeText = @"在Karabiner-Elements退出后，将更改已更改的键.";
  [alert addButtonWithTitle:@"退出"];
  [alert addButtonWithTitle:@"取消"];
  if ([alert runModal] == NSAlertFirstButtonReturn) {
    libkrbn_launchctl_manage_console_user_server(false);
    return YES;
  }
  return NO;
}

@end
