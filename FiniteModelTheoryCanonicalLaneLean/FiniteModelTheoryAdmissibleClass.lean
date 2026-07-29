import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure FiniteModelTheoryAdmittedObject where
  signature : Type
  structure : Type
  finiteUniverse : Prop
  admitsDefinableWellOrder : Prop
  conclusion : admitsDefinableWellOrder

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse