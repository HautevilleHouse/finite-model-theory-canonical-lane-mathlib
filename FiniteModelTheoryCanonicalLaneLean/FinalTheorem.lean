import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteModelTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

def ConstrainedFiniteModelTheoryClosure (A : FiniteModelTheoryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_model_theory_endgame (A : FiniteModelTheoryAdmissibleClass) :
    ConstrainedFiniteModelTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse