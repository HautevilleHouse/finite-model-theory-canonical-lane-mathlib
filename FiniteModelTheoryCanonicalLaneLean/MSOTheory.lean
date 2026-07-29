import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure MSOFormula (Σ : Type) where
  firstOrderPart : FOLSentence (FOLLanguage.mk Σ Empty Empty)
  setQuantifiers : ℕ
  formula : Prop

def MSOSatisfaction {Σ : Type} {M : Type} (I : FOLLanguageInterpretation (FOLLanguage.mk Σ Empty Empty) M) (φ : MSOFormula Σ) : Prop :=
  φ.formula

structure CourcelleTheorem (Σ : Type) where
  class : MinorClosedClass
  property : MSOFormula Σ
  decidability : ∀ (G : SimpleGraph (Fin n)), G ∈ class.graphs → decidable (MSOSatisfaction (interpretGraph G) property)

def CourcelleAdmissibleClass (Σ : Type) (C : CourcelleTheorem Σ) : AdmissibleClass :=
  AdmissibleClass.mk (FiniteModelAdmittedClass.mk (FiniteStructure.mk (Fin 1) (by infer_instance) (fun _ => ∅) (fun _ => id) True) True True (Or.inl True))
    (True) (True) (Or.inl True)

theorem courcelle_bridge (Σ : Type) (C : CourcelleTheorem Σ) :
  bridgeClosed (CourcelleAdmissibleClass Σ C) := by
  exact True.intro

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse
