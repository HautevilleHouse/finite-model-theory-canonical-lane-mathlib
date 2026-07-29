import FiniteModelTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : FiniteModelAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FiniteModelWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse