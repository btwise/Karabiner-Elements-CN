# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Karabiner-EventViewer.Debug:
/Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/Debug/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/Debug/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer


PostBuild.Karabiner-EventViewer.Release:
/Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/Release/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/Release/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer


PostBuild.Karabiner-EventViewer.MinSizeRel:
/Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/MinSizeRel/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/MinSizeRel/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer


PostBuild.Karabiner-EventViewer.RelWithDebInfo:
/Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/RelWithDebInfo/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/EventViewer/build_xcode/RelWithDebInfo/Karabiner-EventViewer.app/Contents/MacOS/Karabiner-EventViewer




# For each target create a dummy ruleso the target does not have to exist
