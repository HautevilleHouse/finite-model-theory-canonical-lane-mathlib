import FiniteModelTheoryCanonicalLaneLean.EhrenfeuchtFraisseGames

/-!
# Zero-One Law Package

This module packages the zero-one law for first-order logic on random finite structures.
-/

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure ZeroOneLawPackage where
  signature : List (String × Nat)
  asymptoticProbabilityDefined : Prop
  zeroOneLawHolds : Prop
  thresholdIdentified : Prop

structure ZeroOneLawEvidence (Z : ZeroOneLawPackage) where
  asymptoticProbabilityDefinedClosed : Z.asymptoticProbabilityDefined
  zeroOneLawHoldsClosed : Z.zeroOneLawHolds
  thresholdIdentifiedClosed : Z.thresholdIdentified

def ZeroOneLawClosed (Z : ZeroOneLawPackage) : Prop :=
  Z.asymptoticProbabilityDefined ∧ Z.zeroOneLawHolds ∧ Z.thresholdIdentified

theorem zero_one_law_closed_from_evidence (Z : ZeroOneLawPackage)
    (Ev : ZeroOneLawEvidence Z) : ZeroOneLawClosed Z := by
  exact And.intro Ev.asymptoticProbabilityDefinedClosed
    (And.intro Ev.zeroOneLawHoldsClosed Ev.thresholdIdentifiedClosed)

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse