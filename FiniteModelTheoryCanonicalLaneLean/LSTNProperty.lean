import canonicalLaneMathlib.AdmissibleClass
import FiniteModelTheoryCanonicalLaneLean.FiniteModelTheoryAdmittedObject

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure LSTNPropertyPackage where
  language : Type
  theory : Prop
  cardinalBound : Nat
  modelExists : Prop
  modelSizeLeBound : Prop

structure LSTNPropertyEvidence (L : LSTNPropertyPackage) where
  modelExistsClosed : L.modelExists
  modelSizeLeBoundClosed : L.modelSizeLeBound

def LSTNPropertyClosed (L : LSTNPropertyPackage) : Prop :=
  L.modelExists ∧ L.modelSizeLeBound

theorem lstn_property_closed_from_evidence (L : LSTNPropertyPackage)
    (Ev : LSTNPropertyEvidence L) : LSTNPropertyClosed L := by
  exact And.intro Ev.modelExistsClosed Ev.modelSizeLeBoundClosed

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse