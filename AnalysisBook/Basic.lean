/-
Copyright (c) 2024-2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: David Thrane Christiansen
-/

import VersoManual
import DemoTextbook.Meta.Lean
import DemoTextbook.Papers

-- This gets access to most of the manual genre (which is also useful for textbooks)
open Verso.Genre Manual

-- This gets access to Lean code that's in code blocks, elaborated in the same process and
-- environment as Verso
open Verso.Genre.Manual.InlineLean


open DemoTextbook

set_option pp.rawOnError true



#doc (Manual) "The Natural Numbers" =>

```lean
namespace MyNats
```

```lean
inductive Nat where
  | zero
  | succ : Nat → Nat
```

```lean
def Nat.ofNat : _root_.Nat → Nat
  | 0 => .zero
  | n + 1 => .succ (.ofNat n)
```

```lean
instance : OfNat Nat n where
  ofNat := .ofNat n
```

```lean
@[match_pattern]
def Nat.add (n k : Nat) : Nat :=
  match k with
  | .zero => n
  | .succ k' => .succ (n.add k')
```

```lean
instance : Add Nat where
  add := Nat.add
```
