import Lake
open Lake DSL

require verso from git "https://github.com/leanprover/verso.git"@"v4.19.0"
require mathlib from git "https://github.com/leanprover-community/mathlib4"@"v4.19.0"

package "analysis-book" where
  version := v!"0.1.0"

lean_lib «AnalysisBook» where
  -- add library configuration options here

@[default_target]
lean_exe "analysis-book" where
  root := `Main
