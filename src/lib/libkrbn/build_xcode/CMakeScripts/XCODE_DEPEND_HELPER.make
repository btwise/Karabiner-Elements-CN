# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.krbn.Debug:
/Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/Debug/libkrbn.a:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/Debug/libkrbn.a


PostBuild.krbn.Release:
/Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/Release/libkrbn.a:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/Release/libkrbn.a


PostBuild.krbn.MinSizeRel:
/Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/MinSizeRel/libkrbn.a:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/MinSizeRel/libkrbn.a


PostBuild.krbn.RelWithDebInfo:
/Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/RelWithDebInfo/libkrbn.a:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/lib/libkrbn/build_xcode/RelWithDebInfo/libkrbn.a




# For each target create a dummy ruleso the target does not have to exist
