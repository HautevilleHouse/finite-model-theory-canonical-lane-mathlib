import FiniteModelTheoryCanonicalLaneLean.AdmissibleClass

/-!
# Ehrenfeucht-Fraisse Games Package

This module defines the Ehrenfeucht-Fraisse game framework as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure EhrenfeuchtFraissePackage where
  structures : List FiniteModel
  pebbleCount : Nat
  gameDefined : Prop
  duplicatorWins : Prop
  spoilerWins : Prop

structure EhrenfeuchtFraisseEvidence (E : EhrenfeuchtFraissePackage) where
  gameDefinedClosed : E.gameDefined
  duplicatorWinsClosed : E.duplicatorWins
  spoilerWinsClosed : E.spoilerWins

def EhrenfeuchtFraisseClosed (E : EhrenfeuchtFraissePackage) : Prop :=
  E.gameDefined ∧ E.duplicatorWins ∧ E.spoilerWins

theorem ehrenfeucht_fraisse_closed_from_evidence (E : EhrenfeuchtFraissePackage)
    (Ev : EhrenfeuchtFraisseEvidence E) : EhrenfeuchtFraisseClosed E := by
  exact And.intro Ev.gameDefinedClosed (And.intro Ev.duplicatorWinsClosed Ev.spoilerWinsClosed)

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse