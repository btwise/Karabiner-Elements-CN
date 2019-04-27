@import Carbon;
#import "AppDelegate.h"
#import "DevicesController.h"
#import "EventQueue.h"
#import "FrontmostApplicationController.h"
#import "KarabinerKit/KarabinerKit.h"
#import "KeyResponder.h"
#import "PreferencesKeys.h"
#import "VariablesController.h"
#import "libkrbn.h"
#import "weakify.h"

@interface AppDelegate ()

@property(weak) IBOutlet NSWindow* window;
@property(weak) IBOutlet EventQueue* eventQueue;
@property(weak) IBOutlet KeyResponder* keyResponder;
@property(weak) IBOutlet FrontmostApplicationController* frontmostApplicationController;
@property(weak) IBOutlet VariablesController* variablesController;
@property(weak) IBOutlet DevicesController* devicesController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification*)aNotification {
  [KarabinerKit setup];
  [KarabinerKit exitIfAnotherProcessIsRunning:"eventviewer.pid"];

  [self setKeyResponder];
  [self setWindowProperty:self];
  [self.eventQueue setup];
  [self.frontmostApplicationController setup];
  [self.variablesController setup];
  [self.devicesController setup];

  @weakify(self);
  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
    @strongify(self);
    if (!self) {
      return;
    }

    if (self.eventQueue.observedDeviceCount == 0) {
      NSAlert* alert = [NSAlert new];
      alert.messageText = @"警告";
      alert.informativeText = @"EventViewer无法观察键盘设备.\n"
                              @"如果您使用其他键盘自定义程序，请在运行EventViewer之前暂时将其停止.";
      [alert addButtonWithTitle:@"好"];

      [alert beginSheetModalForWindow:self.window
                    completionHandler:^(NSModalResponse returnCode){}];
    }
  });
}

- (void)applicationWillTerminate:(NSNotification*)notification {
  libkrbn_terminate();
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication*)theApplication {
  return YES;
}

- (void)tabView:(NSTabView*)tabView didSelectTabViewItem:(NSTabViewItem*)tabViewItem {
  if ([[tabViewItem identifier] isEqualToString:@"Main"]) {
    [self setKeyResponder];
  }
}

- (void)setKeyResponder {
  [self.window makeFirstResponder:self.keyResponder];
}

- (IBAction)setWindowProperty:(id)sender {
  // ----------------------------------------
  if ([[NSUserDefaults standardUserDefaults] boolForKey:kForceStayTop]) {
    [self.window setLevel:NSFloatingWindowLevel];

    NSWindowCollectionBehavior behavior = [self.window collectionBehavior];
    behavior &= ~(NSWindowCollectionBehaviorTransient);
    behavior |= NSWindowCollectionBehaviorManaged;
    [self.window setCollectionBehavior:behavior];

  } else {
    [self.window setLevel:NSNormalWindowLevel];

    NSWindowCollectionBehavior behavior = [self.window collectionBehavior];
    behavior &= ~(NSWindowCollectionBehaviorTransient);
    behavior |= NSWindowCollectionBehaviorManaged;
    [self.window setCollectionBehavior:behavior];
  }

  // ----------------------------------------
  if ([[NSUserDefaults standardUserDefaults] boolForKey:kShowInAllSpaces]) {
    NSWindowCollectionBehavior behavior = [self.window collectionBehavior];
    behavior &= ~(NSWindowCollectionBehaviorMoveToActiveSpace);
    behavior |= NSWindowCollectionBehaviorCanJoinAllSpaces;
    [self.window setCollectionBehavior:behavior];

  } else {
    NSWindowCollectionBehavior behavior = [self.window collectionBehavior];
    behavior &= ~(NSWindowCollectionBehaviorCanJoinAllSpaces | NSWindowCollectionBehaviorMoveToActiveSpace);
    [self.window setCollectionBehavior:behavior];
  }
}

@end
