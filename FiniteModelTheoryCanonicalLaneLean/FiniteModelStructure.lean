import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

/-!
# Finite Model Theory Package

This module defines the admissible-class structure for finite model theory.
-/

structure FiniteRelationalSignature where
  relationSymbols : List String
  arityMap : String -> Nat
  finite : True

def RelationalSignatureFinite (S : FiniteRelationalSignature) : Prop :=
  True

structure FiniteModel (S : FiniteRelationalSignature) where
  universe : Finset Nat
  relations : String -> Finset (List Nat)
  arityCompatibility : ∀ (R : String), (relations R).all (fun t => t.length = S.arityMap R)

structure FiniteModelTheoryAdmittedObject where
  signature : FiniteRelationalSignature
  model : FiniteModel signature
  firstOrderTheory : Prop
  completionWitnessed : Prop

structure FiniteModelTheoryAdmissibleClass where
  object : FiniteModelTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse