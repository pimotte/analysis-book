import Lake
open Lake DSL

require verso from git "https://github.com/leanprover/verso.git"@"main"

package "analysis-book" where
  version := v!"0.1.0"

lean_lib «AnalysisBook» where
  -- add library configuration options here

@[default_target]
lean_exe "analysis-book" where
  root := `AnalysisBook
