import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure CurveConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  connection : Type v
  torsion : Prop
  curvature : Prop
  metricCompatibility : Prop

structure CurveConnectionEvidence (C : CurveConnectionPackage) where
  smoothStructureClosed : C.smoothStructure
  torsionClosed : C.torsion
  curvatureClosed : C.curvature
  metricCompatibilityClosed : C.metricCompatibility

def CurveConnectionClosed (C : CurveConnectionPackage) : Prop :=
  C.smoothStructure ∧ C.torsion ∧ C.curvature ∧ C.metricCompatibility

theorem curve_connection_closed_from_evidence (C : CurveConnectionPackage)
    (E : CurveConnectionEvidence C) : CurveConnectionClosed C := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.torsionClosed
      (And.intro E.curvatureClosed E.metricCompatibilityClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse