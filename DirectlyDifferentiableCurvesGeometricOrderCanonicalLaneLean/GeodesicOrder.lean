import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure GeodesicOrder (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] [RiemannianManifold M] where
  connection : Connection M
  exponentialMap : M → TangentSpace M → M
  orderPreserving : ∀ (x y : M), (∃ (γ : CurveOrder M), γ.parametrization 0 = x ∧ γ.parametrization 1 = y ∧ IsGeodesic γ.parametrization) → Prop

def GeodesicOrderClosed (G : GeodesicOrder M) : Prop :=
  G.orderPreserving

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse
