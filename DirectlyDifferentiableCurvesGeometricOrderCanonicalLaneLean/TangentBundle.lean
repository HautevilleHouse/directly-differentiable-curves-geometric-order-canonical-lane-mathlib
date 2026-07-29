import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure TangentBundle (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  base : M → Type v
  fiber : (x : M) → Set (base x → ℝ)
  linearStructure : ∀ x, IsModule ℝ (base x → ℝ)
  derivativeMap : (CurveOrder M) → (ℝ → TangentBundle M)

def TangentBundleClosed (T : TangentBundle M) : Prop :=
  ∀ x, LinearMap (fiber x) (fiber x) = 0

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse
