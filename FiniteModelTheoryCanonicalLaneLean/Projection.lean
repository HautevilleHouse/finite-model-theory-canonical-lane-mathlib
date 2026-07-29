import FiniteModelTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def finiteModelProjection : Projection FiniteModelEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem finite_model_projection_idempotent (x : FiniteModelEndgameState) :
    finiteModelProjection.toFun (finiteModelProjection.toFun x) = finiteModelProjection.toFun x := by
  exact finiteModelProjection.idempotent x

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse