import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure CurveDerivativePackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] (γ : DirectlyDifferentiableCurve M) where
  derivativeAtEachPoint : ℝ → (TangentSpace M)
  derivativeContinuous : Prop
  derivativeBounded : Prop
  derivativeConsistentWithOrder : Prop

structure CurveDerivativeEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {γ : DirectlyDifferentiableCurve M} (D : CurveDerivativePackage γ) where
  derivativeAtEachPointClosed : D.derivativeAtEachPoint
  derivativeContinuousClosed : D.derivativeContinuous
  derivativeBoundedClosed : D.derivativeBounded
  derivativeConsistentWithOrderClosed : D.derivativeConsistentWithOrder

def CurveDerivativeClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {γ : DirectlyDifferentiableCurve M} (D : CurveDerivativePackage γ) : Prop :=
  D.derivativeAtEachPoint ∧ D.derivativeContinuous ∧ D.derivativeBounded ∧ D.derivativeConsistentWithOrder

theorem curve_derivative_closed_from_evidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] {γ : DirectlyDifferentiableCurve M} (D : CurveDerivativePackage γ) (E : CurveDerivativeEvidence D) : CurveDerivativeClosed D := by
  exact And.intro E.derivativeAtEachPointClosed (And.intro E.derivativeContinuousClosed (And.intro E.derivativeBoundedClosed E.derivativeConsistentWithOrderClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse