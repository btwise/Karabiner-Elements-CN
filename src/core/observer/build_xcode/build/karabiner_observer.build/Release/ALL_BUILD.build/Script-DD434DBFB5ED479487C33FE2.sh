#!/bin/sh
make -C /Users/mojave/Karabiner-Elements/src/core/observer/build_xcode -f /Users/mojave/Karabiner-Elements/src/core/observer/build_xcode/CMakeScripts/ALL_BUILD_cmakeRulesBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
