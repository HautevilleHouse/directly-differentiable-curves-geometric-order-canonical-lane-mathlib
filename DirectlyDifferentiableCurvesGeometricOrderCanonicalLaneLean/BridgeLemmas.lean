import DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CurveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse