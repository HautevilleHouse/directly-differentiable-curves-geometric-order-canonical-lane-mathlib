import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Prop
  restrictedHolonomy : Prop
  reductionTheorem : Prop
  curvatureHolonomyRelation : Prop

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyGroup ∧ H.restrictedHolonomy ∧ H.reductionTheorem ∧ H.curvatureHolonomyRelation

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse
