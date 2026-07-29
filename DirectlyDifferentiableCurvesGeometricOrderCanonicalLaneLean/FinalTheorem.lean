import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

def ConstrainedCurveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_curve_endgame (A : AdmissibleClass) :
    ConstrainedCurveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse