import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure CurvatureInvariantPackage where
  manifold : Type u
  curvatureTensor : Type v
  riemannianMetric : Type w
  scalarCurvature : Prop
  ricciCurvature : Prop
  sectionalCurvature : Prop
  invariantComputed : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  scalarCurvatureClosed : C.scalarCurvature
  ricciCurvatureClosed : C.ricciCurvature
  sectionalCurvatureClosed : C.sectionalCurvature
  invariantComputedClosed : C.invariantComputed

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.scalarCurvature ∧ C.ricciCurvature ∧ C.sectionalCurvature ∧ C.invariantComputed

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.scalarCurvatureClosed
    (And.intro E.ricciCurvatureClosed
      (And.intro E.sectionalCurvatureClosed E.invariantComputedClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse