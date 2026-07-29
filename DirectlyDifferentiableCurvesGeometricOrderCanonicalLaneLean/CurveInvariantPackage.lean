import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure CurveInvariantPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] (G : GeometricOrderStructure M) where
  lengthFunctional : DirectlyDifferentiableCurve M → ℝ
  curvatureFunctional : DirectlyDifferentiableCurve M → ℝ
  torsionFunctional : DirectlyDifferentiableCurve M → ℝ
  invariantsContinuous : Prop
  invariantsOrderPreserving : Prop

structure CurveInvariantEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {G : GeometricOrderStructure M} (I : CurveInvariantPackage G) where
  invariantsContinuousClosed : I.invariantsContinuous
  invariantsOrderPreservingClosed : I.invariantsOrderPreserving

def CurveInvariantClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {G : GeometricOrderStructure M} (I : CurveInvariantPackage G) : Prop :=
  I.invariantsContinuous ∧ I.invariantsOrderPreserving

theorem curve_invariant_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {G : GeometricOrderStructure M} (I : CurveInvariantPackage G) (E : CurveInvariantEvidence I) : CurveInvariantClosed I := by
  exact And.intro E.invariantsContinuousClosed E.invariantsOrderPreservingClosed

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse