import canonicalLaneMathlib.AdmissibleClass
import FiniteModelTheoryCanonicalLaneLean.FiniteModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure EhrenfeuchtFraisséPackage where
  structures : List FiniteModelTheoryAdmittedObject
  duplicatorWin : Prop
  spoilerWin : Prop
  gameLength : Nat

structure EhrenfeuchtFraisséEvidence (E : EhrenfeuchtFraisséPackage) where
  duplicatorWinClosed : E.duplicatorWin
  spoilerWinClosed : E.spoilerWin

def EhrenfeuchtFraisséClosed (E : EhrenfeuchtFraisséPackage) : Prop :=
  E.duplicatorWin ∧ E.spoilerWin

theorem ehrenfeucht_fraissé_closed_from_evidence (E : EhrenfeuchtFraisséPackage)
    (Ev : EhrenfeuchtFraisséEvidence E) : EhrenfeuchtFraisséClosed E := by
  exact And.intro Ev.duplicatorWinClosed Ev.spoilerWinClosed

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse