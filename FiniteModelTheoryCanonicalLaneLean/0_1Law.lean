import canonicalLaneMathlib.AdmissibleClass
import FiniteModelTheoryCanonicalLaneLean.FiniteModelTheoryAdmittedObject

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure ZeroOneLawPackage where
  property : Prop
  limitProbabilityZero : Prop
  limitProbabilityOne : Prop
  probabilityUndefined : Prop

structure ZeroOneLawEvidence (Z : ZeroOneLawPackage) where
  limitProbabilityZeroClosed : Z.limitProbabilityZero
  limitProbabilityOneClosed : Z.limitProbabilityOne
  probabilityUndefinedClosed : Z.probabilityUndefined

def ZeroOneLawClosed (Z : ZeroOneLawPackage) : Prop :=
  (Z.limitProbabilityZero ∧ Z.limitProbabilityOne) → Z.probabilityUndefined

theorem zero_one_law_closed_from_evidence (Z : ZeroOneLawPackage)
    (Ev : ZeroOneLawEvidence Z) : ZeroOneLawClosed Z := by
  intro h
  exact Ev.probabilityUndefinedClosed

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse