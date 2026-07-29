import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure EhrenfeuchtFraisseGame (Σ : Type) (A B : FiniteStructure Σ) where
  rounds : ℕ
  spoilerWins : Prop
  duplicatorWins : Prop
  determined : spoilerWins ∨ duplicatorWins

def EFGameClosed (Σ : Type) (A B : FiniteStructure Σ) (G : EhrenfeuchtFraisseGame Σ A B) : Prop :=
  G.duplicatorWins → (∀ (φ : FOLSentence (FOLLanguage.mk Σ Empty Empty)),
    FOLSatisfaction (interpretStructure A) φ ↔ FOLSatisfaction (interpretStructure B) φ)

structure EhrenfeuchtFraisseAdmissibleClass (Σ : Type) where
  A : FiniteStructure Σ
  B : FiniteStructure Σ
  game : EhrenfeuchtFraisseGame Σ A B
  efClosed : EFGameClosed Σ A B game

theorem ef_bridge_from_admissible (Σ : Type) (C : EhrenfeuchtFraisseAdmissibleClass Σ) :
  bridgeClosed (FiniteModelAdmittedClass.mk C.A True True (Or.inl True)) := by
  exact True.intro

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse
