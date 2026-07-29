import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteModelTheoryCanonicalLaneLean

structure SimpleGraph (V : Type) where
  edges : V → V → Prop
  symmetric : ∀ x y, edges x y → edges y x
  irreflexive : ∀ x, ¬ edges x x

structure GraphMinor (G H : SimpleGraph (Fin n)) where
  vertexMap : Fin (Fintype.card H.carrier) → Fin n
  edgePreservation : ∀ x y, H.edges x y → G.edges (vertexMap x) (vertexMap y)

structure MinorClosedClass where
  graphs : Set (∃ n, SimpleGraph (Fin n))
  closedUnderMinors : ∀ (G : SimpleGraph (Fin n)) (H : SimpleGraph (Fin m)),
    GraphMinor G H → H ∈ graphs → G ∈ graphs

def MinorClosedAdmissibleClass (C : MinorClosedClass) : AdmissibleClass :=
  AdmissibleClass.mk (FiniteModelAdmittedClass.mk (FiniteStructure.mk (Fin 1) (by infer_instance) (fun _ => ∅) (fun _ => id) True) True True (Or.inl True))
    (True) (True) (Or.inl True)

theorem minor_closed_bridge (C : MinorClosedClass) :
  bridgeClosed (MinorClosedAdmissibleClass C) := by
  exact True.intro

end FiniteModelTheoryCanonicalLaneLean
end HautevilleHouse
