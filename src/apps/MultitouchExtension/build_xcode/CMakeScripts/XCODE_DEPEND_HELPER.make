# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Karabiner-MultitouchExtension.Debug:
/Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/Debug/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/Debug/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension


PostBuild.Karabiner-MultitouchExtension.Release:
/Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/Release/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/Release/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension


PostBuild.Karabiner-MultitouchExtension.MinSizeRel:
/Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/MinSizeRel/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/MinSizeRel/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension


PostBuild.Karabiner-MultitouchExtension.RelWithDebInfo:
/Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/RelWithDebInfo/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension:
	/bin/rm -f /Users/btwise/Karabiner-Elements/src/apps/MultitouchExtension/build_xcode/RelWithDebInfo/Karabiner-MultitouchExtension.app/Contents/MacOS/Karabiner-MultitouchExtension




# For each target create a dummy ruleso the target does not have to exist
