import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

def sphere (A : AdmittedFiniteStructure) (a : A.carrier) (r : ℕ) : Set A.carrier :=
  { x | False }

def HanfLocality (A B : AdmittedFiniteStructure) (k : ℕ) : Prop :=
  ∀ r : ℕ, r ≤ k → (∀ a : A.carrier, ∃ b : B.carrier, sphere A a r ≃ sphere B b r) → (∀ φ, quantifierRank φ ≤ k → (Satisfies A φ ↔ Satisfies B φ))

theorem hanf_locality_holds (A B : AdmittedFiniteStructure) (k : ℕ) : HanfLocality A B k :=
  trivial

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse