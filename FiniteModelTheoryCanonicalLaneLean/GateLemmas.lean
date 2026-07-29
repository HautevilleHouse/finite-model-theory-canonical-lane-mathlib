import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteModelTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

def gateClosed (A : FiniteModelTheoryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FiniteModelTheoryAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse