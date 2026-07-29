import DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure AdmissibleClass where
  object : CurveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CurveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse