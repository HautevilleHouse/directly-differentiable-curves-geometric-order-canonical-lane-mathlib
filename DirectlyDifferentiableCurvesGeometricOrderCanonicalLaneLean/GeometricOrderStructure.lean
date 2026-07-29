import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure GeometricOrderStructure (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  curves : Set (DirectlyDifferentiableCurve M)
  orderRelation : M → M → Prop
  orderCompatibleWithDerivative : Prop
  orderComplete : Prop
  totalOrder : Prop

structure GeometricOrderEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] (G : GeometricOrderStructure M) where
  orderCompatibleWithDerivativeClosed : G.orderCompatibleWithDerivative
  orderCompleteClosed : G.orderComplete
  totalOrderClosed : G.totalOrder

def GeometricOrderClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] (G : GeometricOrderStructure M) : Prop :=
  G.orderCompatibleWithDerivative ∧ G.orderComplete ∧ G.totalOrder

theorem geometric_order_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] (G : GeometricOrderStructure M) (E : GeometricOrderEvidence G) : GeometricOrderClosed G := by
  exact And.intro E.orderCompatibleWithDerivativeClosed (And.intro E.orderCompleteClosed E.totalOrderClosed)

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse