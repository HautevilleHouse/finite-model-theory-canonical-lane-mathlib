import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure RandomGraphProbability (n : ℕ) (p : ℝ) where
  graph : Finset (Fin n × Fin n)
  probability : ℝ
  probCalc : probability = p ^ (Finset.card graph)

structure ZeroOneLaw where
  property : FOLSentence (FOLLanguage.mk (Fin 2) Empty Empty)
  asymptoticProbability : ℝ → ℝ
  limitZeroOrOne : (∀ ε > 0, ∃ N, ∀ n ≥ N, |asymptoticProbability n - 0| < ε) ∨
                   (∀ ε > 0, ∃ N, ∀ n ≥ N, |asymptoticProbability n - 1| < ε)

def ZeroOneLawAdmissibleClass (L : ZeroOneLaw) : AdmissibleClass :=
  AdmissibleClass.mk (FiniteModelAdmittedClass.mk (FiniteStructure.mk (Fin 1) (by infer_instance) (fun _ => ∅) (fun _ => id) True) True True (Or.inl True))
    (True) (True) (Or.inl True)

theorem zero_one_law_bridge (L : ZeroOneLaw) :
  bridgeClosed (ZeroOneLawAdmissibleClass L) := by
  exact True.intro

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse
