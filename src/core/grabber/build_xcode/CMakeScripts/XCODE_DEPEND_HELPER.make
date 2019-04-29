# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.karabiner_grabber.Debug:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/Debug/karabiner_grabber:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/Debug/karabiner_grabber


PostBuild.karabiner_grabber.Release:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/Release/karabiner_grabber:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/Release/karabiner_grabber


PostBuild.karabiner_grabber.MinSizeRel:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/MinSizeRel/karabiner_grabber:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/MinSizeRel/karabiner_grabber


PostBuild.karabiner_grabber.RelWithDebInfo:
/Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/RelWithDebInfo/karabiner_grabber:
	/bin/rm -f /Users/btwise/我的仓库/Karabiner-Elements/src/core/grabber/build_xcode/RelWithDebInfo/karabiner_grabber




# For each target create a dummy ruleso the target does not have to exist
