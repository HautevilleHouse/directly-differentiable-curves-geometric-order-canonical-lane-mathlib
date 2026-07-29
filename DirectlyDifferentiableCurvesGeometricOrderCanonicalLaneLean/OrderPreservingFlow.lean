import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure OrderPreservingFlow (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] (G : GeometricOrderStructure M) where
  flowMap : ℝ → M → M
  flowPreservesOrder : Prop
  flowDifferentiable : Prop
  flowGeneratedByCurves : Prop
  flowComplete : Prop

structure OrderPreservingFlowEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {G : GeometricOrderStructure M} (F : OrderPreservingFlow G) where
  flowPreservesOrderClosed : F.flowPreservesOrder
  flowDifferentiableClosed : F.flowDifferentiable
  flowGeneratedByCurvesClosed : F.flowGeneratedByCurves
  flowCompleteClosed : F.flowComplete

def OrderPreservingFlowClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {G : GeometricOrderStructure M} (F : OrderPreservingFlow G) : Prop :=
  F.flowPreservesOrder ∧ F.flowDifferentiable ∧ F.flowGeneratedByCurves ∧ F.flowComplete

theorem order_preserving_flow_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {G : GeometricOrderStructure M} (F : OrderPreservingFlow G) (E : OrderPreservingFlowEvidence F) : OrderPreservingFlowClosed F := by
  exact And.intro E.flowPreservesOrderClosed (And.intro E.flowDifferentiableClosed (And.intro E.flowGeneratedByCurvesClosed E.flowCompleteClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse