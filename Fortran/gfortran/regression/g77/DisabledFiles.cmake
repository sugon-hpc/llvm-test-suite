#===------------------------------------------------------------------------===#
#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
#===------------------------------------------------------------------------===#

# These tests use (currently) unsupported GNU extensions.
file(GLOB UNSUPPORTED_FILES CONFIGURE_DEPENDS
  intrinsic-unix-bessel.f  # bes(j|y)(0|1|n),
  intrinsic-unix-erf.f     # derf
)

# There are currently no unimplemented files.
set(UNIMPLEMENTED_FILES "")

# These tests are skipped because they cause flang to crash
file(GLOB SKIPPED_FILES CONFIGURE_DEPENDS
  # error: 64-bit code requested on a subtarget that doesn't support it!
  20010216-1.f
)

# These tests fail at runtime.
file(GLOB FAILING_FILES CONFIGURE_DEPENDS
  complex_1.f
)
