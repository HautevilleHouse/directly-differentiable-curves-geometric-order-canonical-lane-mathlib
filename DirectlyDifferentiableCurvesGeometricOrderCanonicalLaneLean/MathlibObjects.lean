import DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CurveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CurveAdmittedObject where
  space : CurveSpace
  smoothCurve : Prop
  geodesicOrder : Prop
  curvatureInvariant : Prop
  modelSpace : Type
  modelTopology : TopologicalSpace modelSpace
  isometricEmbedding : Prop
  conclusion : isometricEmbedding

structure CurveEndgameState where
  object : CurveAdmittedObject

def CurveWitnessClosed (O : CurveAdmittedObject) : Prop :=
  O.isometricEmbedding

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse