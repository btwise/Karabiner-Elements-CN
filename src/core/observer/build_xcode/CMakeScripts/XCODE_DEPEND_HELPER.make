# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.karabiner_observer.Debug:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/Debug/karabiner_observer:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/Debug/karabiner_observer


PostBuild.karabiner_observer.Release:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/Release/karabiner_observer:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/Release/karabiner_observer


PostBuild.karabiner_observer.MinSizeRel:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/MinSizeRel/karabiner_observer:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/MinSizeRel/karabiner_observer


PostBuild.karabiner_observer.RelWithDebInfo:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/RelWithDebInfo/karabiner_observer:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/observer/build_xcode/RelWithDebInfo/karabiner_observer




# For each target create a dummy ruleso the target does not have to exist
