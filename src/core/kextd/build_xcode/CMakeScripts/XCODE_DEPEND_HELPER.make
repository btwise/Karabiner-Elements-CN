# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.karabiner_kextd.Debug:
/Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/Debug/karabiner_kextd:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/Debug/karabiner_kextd


PostBuild.karabiner_kextd.Release:
/Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/Release/karabiner_kextd:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/Release/karabiner_kextd


PostBuild.karabiner_kextd.MinSizeRel:
/Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/MinSizeRel/karabiner_kextd:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/MinSizeRel/karabiner_kextd


PostBuild.karabiner_kextd.RelWithDebInfo:
/Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/RelWithDebInfo/karabiner_kextd:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/kextd/build_xcode/RelWithDebInfo/karabiner_kextd




# For each target create a dummy ruleso the target does not have to exist
