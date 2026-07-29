import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure FiniteModelStructure where
  carrier : Type
  relations : List (carrier → carrier → Prop)
  finite : Fintype carrier

structure FiniteModelAdmittedObject where
  structure : FiniteModelStructure
  sentence : Prop
  modelRelation : sentence
  conclusion : modelRelation

def FiniteModelWitnessClosed (O : FiniteModelAdmittedObject) : Prop :=
  O.modelRelation

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse