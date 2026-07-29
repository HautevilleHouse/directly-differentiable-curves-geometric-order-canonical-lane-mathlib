import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure CurveOrder (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  carrier : Set M
  parametrization : ℝ → M
  differentiable : ParametricDifferentiability parametrization
  orderPreserving : ∀ s t : ℝ, s < t → carrier (parametrization s) ∨ carrier (parametrization t)

structure CurveOrderAdmissibleClass (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  object : CurveOrder M
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def CurveOrderClosure (A : CurveOrderAdmissibleClass M) : Prop :=
  CurveOrderClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse
