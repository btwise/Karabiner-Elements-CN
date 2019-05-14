# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Karabiner-NotificationWindow.Debug:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/Debug/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/Debug/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow


PostBuild.Karabiner-NotificationWindow.Release:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/Release/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/Release/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow


PostBuild.Karabiner-NotificationWindow.MinSizeRel:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/MinSizeRel/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/MinSizeRel/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow


PostBuild.Karabiner-NotificationWindow.RelWithDebInfo:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/RelWithDebInfo/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/NotificationWindow/build_xcode/RelWithDebInfo/Karabiner-NotificationWindow.app/Contents/MacOS/Karabiner-NotificationWindow




# For each target create a dummy ruleso the target does not have to exist
