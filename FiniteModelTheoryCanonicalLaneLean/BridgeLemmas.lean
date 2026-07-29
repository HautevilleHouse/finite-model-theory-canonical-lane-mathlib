import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteModelTheoryCanonicalLaneLean.FiniteModelStructure

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

def bridgeClosed (A : FiniteModelTheoryAdmissibleClass) : Prop :=
  A.object.completionWitnessed

theorem bridge_from_admissible_class (A : FiniteModelTheoryAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.completionWitnessed

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse