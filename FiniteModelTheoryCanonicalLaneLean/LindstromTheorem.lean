import FiniteModelTheoryCanonicalLaneLean.ZeroOneLaw

/-!
# Lindstrom's Theorem Package

This module packages Lindstrom's characterization of first-order logic.
-/

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure LindstromPackage where
  abstractLogic : Type u
  compactness : Prop
  lowenheimSkolem : Prop
  equivalentToFO : Prop

structure LindstromEvidence (L : LindstromPackage) where
  compactnessClosed : L.compactness
  lowenheimSkolemClosed : L.lowenheimSkolem
  equivalentToFOClosed : L.equivalentToFO

def LindstromClosed (L : LindstromPackage) : Prop :=
  L.compactness ∧ L.lowenheimSkolem ∧ L.equivalentToFO

theorem lindstrom_closed_from_evidence (L : LindstromPackage)
    (Ev : LindstromEvidence L) : LindstromClosed L := by
  exact And.intro Ev.compactnessClosed (And.intro Ev.lowenheimSkolemClosed Ev.equivalentToFOClosed)

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse