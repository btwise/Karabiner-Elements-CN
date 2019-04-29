# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Karabiner-Elements.Debug:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/Debug/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/Debug/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements


PostBuild.Karabiner-Elements.Release:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/Release/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/Release/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements


PostBuild.Karabiner-Elements.MinSizeRel:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/MinSizeRel/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/MinSizeRel/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements


PostBuild.Karabiner-Elements.RelWithDebInfo:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/RelWithDebInfo/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Updater/build_xcode/RelWithDebInfo/Karabiner-Elements.app/Contents/MacOS/Karabiner-Elements




# For each target create a dummy ruleso the target does not have to exist
