# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.KarabinerKit.Debug:
/Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/Debug/libKarabinerKit.a:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/Debug/libKarabinerKit.a


PostBuild.KarabinerKit.Release:
/Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/Release/libKarabinerKit.a:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/Release/libKarabinerKit.a


PostBuild.KarabinerKit.MinSizeRel:
/Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/MinSizeRel/libKarabinerKit.a:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/MinSizeRel/libKarabinerKit.a


PostBuild.KarabinerKit.RelWithDebInfo:
/Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/RelWithDebInfo/libKarabinerKit.a:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/lib/KarabinerKit/build_xcode/RelWithDebInfo/libKarabinerKit.a




# For each target create a dummy ruleso the target does not have to exist
