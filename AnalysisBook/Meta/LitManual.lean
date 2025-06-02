import VersoBlog.LiterateLeanPage
import VersoManual

open Verso.Genre.Blog.Literate
open Lean.Parser.Tactic

syntax "def_literate_manual " ident optConfig " from " ident " in " str " as " str (" with " term)? (rewrites)? : command



declare_config_elab litManualConfig LitPageConfig

open Verso Doc in
open Lean Elab Command in
elab_rules : command
  | `(def_literate_manual $x $cfg:optConfig from $mod in $path as $title $[with $metadata]? $[$rw:rewrites]?) => do
    let (config, _) ← liftTermElabM <| do
      litManualConfig cfg |>.run {elaborator := `x} |>.run {goals := []}
    withScope (fun sc => {sc with opts := Elab.async.set sc.opts false}) do
      let genre ← `(Verso.Genre.Manual)
      elabLiteratePage x path mod config title genre metadata rw
