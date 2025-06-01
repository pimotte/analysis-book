/-
Copyright (c) 2024-2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: David Thrane Christiansen
-/

import VersoManual

-- These are chapters that are included
import AnalysisBook.Section_2_1
import AnalysisBook.Section_2_2
import AnalysisBook.Section_2_3
import AnalysisBook.Section_2_epilogue
import AnalysisBook.Section_3_1
import AnalysisBook.Section_4_1
import AnalysisBook.Section_4_2


-- This gets access to most of the manual genre (which is also useful for textbooks)
open Verso.Genre Manual

-- This gets access to Lean code that's in code blocks, elaborated in the same process and
-- environment as Verso
open Verso.Genre.Manual.InlineLean


-- open AnalysisBook

set_option pp.rawOnError true



#doc (Manual) "Lean companion to Analysis I" =>

%%%
authors := ["Terence Tao"]
%%%

# Introduction

# Starting at the beginning: the natural numbers

{include 2 AnalysisBook.Section_2_1}

{include 2 AnalysisBook.Section_2_2}

{include 2 AnalysisBook.Section_2_3}

{include 2 AnalysisBook.Section_2_epilogue}

# Set theory

{include 2 AnalysisBook.Section_3_1}

# Integers and rationals

{include 2 AnalysisBook.Section_4_1}

{include 2 AnalysisBook.Section_4_2}

# Index
%%%
number := false
tag := "index"
%%%

{theIndex}
