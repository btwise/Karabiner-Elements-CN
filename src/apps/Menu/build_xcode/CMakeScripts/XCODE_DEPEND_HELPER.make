# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Karabiner-Menu.Debug:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/Debug/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/Debug/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu


PostBuild.Karabiner-Menu.Release:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/Release/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/Release/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu


PostBuild.Karabiner-Menu.MinSizeRel:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/MinSizeRel/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/MinSizeRel/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu


PostBuild.Karabiner-Menu.RelWithDebInfo:
/Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/RelWithDebInfo/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/apps/Menu/build_xcode/RelWithDebInfo/Karabiner-Menu.app/Contents/MacOS/Karabiner-Menu




# For each target create a dummy ruleso the target does not have to exist
