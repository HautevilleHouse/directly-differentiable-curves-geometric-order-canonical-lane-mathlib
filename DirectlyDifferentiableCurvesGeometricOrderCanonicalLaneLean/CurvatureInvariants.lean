import DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean.AdmissibleClass

/-!
# Curvature Invariants Package
-/

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure CurvatureInvariantsPackage where
  geodeticCurvature : Prop
  torsion : Prop
  curvatureTorsionRelations : Prop
  frenetFrameExists : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  geodeticCurvatureClosed : C.geodeticCurvature
  torsionClosed : C.torsion
  curvatureTorsionRelationsClosed : C.curvatureTorsionRelations
  frenetFrameExistsClosed : C.frenetFrameExists

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.geodeticCurvature ∧ C.torsion ∧ C.curvatureTorsionRelations ∧ C.frenetFrameExists

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantsPackage)
    (E : CurvatureInvariantsEvidence C) : CurvatureInvariantsClosed C := by
  exact And.intro E.geodeticCurvatureClosed (And.intro E.torsionClosed
    (And.intro E.curvatureTorsionRelationsClosed E.frenetFrameExistsClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse