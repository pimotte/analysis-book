
import VersoBlog
import AnalysisBook.Home

open Verso Genre Blog Site Syntax

open Output Html Template Theme in
def theme : Theme := Theme.default


def_literate_page sec21 from Section_2_1 in "AnalysisBook/Sections" as "Literate Lean page"



def demoSite : Site := site AnalysisBook.Home /
  "PHOAS" litPage


def main := blogMain theme demoSite
