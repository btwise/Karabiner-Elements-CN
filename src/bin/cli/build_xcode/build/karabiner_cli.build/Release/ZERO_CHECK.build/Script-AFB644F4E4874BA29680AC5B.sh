#!/bin/sh
make -C /Users/mojave/Karabiner-Elements/src/bin/cli/build_xcode -f /Users/mojave/Karabiner-Elements/src/bin/cli/build_xcode/CMakeScripts/ZERO_CHECK_cmakeRulesBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
