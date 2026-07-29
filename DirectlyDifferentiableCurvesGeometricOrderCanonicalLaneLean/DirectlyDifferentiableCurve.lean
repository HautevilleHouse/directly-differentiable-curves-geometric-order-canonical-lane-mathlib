import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure DirectlyDifferentiableCurve (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  source : ℝ → M
  differentiable : Prop
  sourceDerivative : Prop
  wellDefinedOrder : Prop
  initialPoint : M
  terminalPoint : M
  orderPreserving : Prop

def DirectlyDifferentiableCurveClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M] (γ : DirectlyDifferentiableCurve M) : Prop :=
  γ.differentiable ∧ γ.sourceDerivative ∧ γ.wellDefinedOrder ∧ γ.orderPreserving

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse