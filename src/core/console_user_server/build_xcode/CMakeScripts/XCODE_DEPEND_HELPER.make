# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.karabiner_console_user_server.Debug:
/Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/Debug/karabiner_console_user_server:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/Debug/karabiner_console_user_server


PostBuild.karabiner_console_user_server.Release:
/Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/Release/karabiner_console_user_server:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/Release/karabiner_console_user_server


PostBuild.karabiner_console_user_server.MinSizeRel:
/Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/MinSizeRel/karabiner_console_user_server:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/MinSizeRel/karabiner_console_user_server


PostBuild.karabiner_console_user_server.RelWithDebInfo:
/Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/RelWithDebInfo/karabiner_console_user_server:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/core/console_user_server/build_xcode/RelWithDebInfo/karabiner_console_user_server




# For each target create a dummy ruleso the target does not have to exist
