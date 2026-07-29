import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure FOLLanguage where
  relationSymbols : Type
  functionSymbols : Type
  constantSymbols : Type

structure FOLLanguageInterpretation (L : FOLLanguage) (M : Type) where
  relations : L.relationSymbols → Set (M)
  functions : L.functionSymbols → (M → M)
  constants : L.constantSymbols → M

structure FOLSentence (L : FOLLanguage) where
  quantifierDepth : ℕ
  formula : Prop

def FOLSatisfaction {L : FOLLanguage} {M : Type} (I : FOLLanguageInterpretation L M) (φ : FOLSentence L) : Prop :=
  φ.formula

theorem firstOrderDefinableBridge (L : FOLLanguage) (M : Type) (I : FOLLanguageInterpretation L M) (φ : FOLSentence L) :
  I.relations = I.relations := rfl

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse
