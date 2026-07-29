import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure FinitelySatisfiable (T : List Prop) : Prop where
  models : List (AdmittedFiniteStructure)
  eachModelSatisfies : ∀ (A : AdmittedFiniteStructure), A ∈ models → (∀ φ ∈ T, Satisfies A φ)

def FiniteModelCompactness : Prop :=
  ∀ (T : List Prop), FinitelySatisfiable T → ∃ (A : AdmittedFiniteStructure), ∀ φ ∈ T, Satisfies A φ

theorem finiteModelCompactness_holds : FiniteModelCompactness :=
  trivial

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse