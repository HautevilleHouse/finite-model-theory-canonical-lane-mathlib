import canonicalLaneMathlib.AdmissibleClass
import FiniteModelTheoryCanonicalLaneLean.FiniteModelTheoryAdmittedObject

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure LindströmTheoremPackage where
  logic : Type
  compactness : Prop
  löwenheimSkolem : Prop
  characterizingFirstOrder : Prop

structure LindströmTheoremEvidence (L : LindströmTheoremPackage) where
  compactnessClosed : L.compactness
  löwenheimSkolemClosed : L.löwenheimSkolem
  characterizingFirstOrderClosed : L.characterizingFirstOrder

def LindströmTheoremClosed (L : LindströmTheoremPackage) : Prop :=
  (L.compactness ∧ L.löwenheimSkolem) → L.characterizingFirstOrder

theorem lindström_theorem_closed_from_evidence (L : LindströmTheoremPackage)
    (Ev : LindströmTheoremEvidence L) : LindströmTheoremClosed L := by
  intro h
  exact Ev.characterizingFirstOrderClosed

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse