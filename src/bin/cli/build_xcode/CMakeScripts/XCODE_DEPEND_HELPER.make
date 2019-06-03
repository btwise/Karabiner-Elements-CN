# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.karabiner_cli.Debug:
/Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/Debug/karabiner_cli:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/Debug/karabiner_cli


PostBuild.karabiner_cli.Release:
/Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/Release/karabiner_cli:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/Release/karabiner_cli


PostBuild.karabiner_cli.MinSizeRel:
/Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/MinSizeRel/karabiner_cli:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/MinSizeRel/karabiner_cli


PostBuild.karabiner_cli.RelWithDebInfo:
/Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/RelWithDebInfo/karabiner_cli:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/bin/cli/build_xcode/RelWithDebInfo/karabiner_cli




# For each target create a dummy ruleso the target does not have to exist
