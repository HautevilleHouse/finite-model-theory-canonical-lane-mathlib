import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure FiniteStructure (Σ : Type) where
  carrier : Type
  finite : Fintype carrier
  relations : Σ → Set (carrier)
  functions : Σ → (carrier → carrier)
  signatureConsistent : Prop

def FiniteStructureAdmittedObject (Σ : Type) : Type :=
  Σ

structure FiniteModelAdmittedClass (Σ : Type) where
  structure : FiniteStructure Σ
  theoryComplete : Prop
  remainderRecorded : Prop
  gateWitness : theoryComplete ∨ remainderRecorded

def FiniteModelWitnessClosed {Σ : Type} (A : FiniteModelAdmittedClass Σ) : Prop :=
  A.theoryComplete

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse
