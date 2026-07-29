import FiniteModelTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FiniteModel where
  universe : Type u
  signature : List (String × Nat)
  relations : List (String × (Set (List (Type u))))

structure FiniteModelAdmittedObject where
  model : FiniteModel
  finiteUniverse : Fintype (model.universe)
  properties : List (Prop)
  conclusion : properties ≠ []

structure FiniteModelEndgameState where
  object : FiniteModelAdmittedObject

def FiniteModelWitnessClosed (O : FiniteModelAdmittedObject) : Prop :=
  O.properties ≠ []

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse