import HautevilleHouse.FiniteModelTheoryCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.FiniteModelTheoryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  constrainedClosureDef : String
  closureProofName : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "finite-model-theory"
    theoremName := "CconstrainedFMTClosure"
    constrainedClosureDef := "ConstrainedFMTClosure"
    closureProofName := "constrained_fmt_endgame"
    carriedRemainder := "classical boundary remains open"
  }

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse