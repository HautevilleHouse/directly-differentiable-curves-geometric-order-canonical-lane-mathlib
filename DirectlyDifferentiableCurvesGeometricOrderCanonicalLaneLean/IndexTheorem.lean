import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  ellipticOperator : Type v
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop
  chernCharacterAppears : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality
  chernCharacterAppearsClosed : I.chernCharacterAppears

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality ∧ I.chernCharacterAppears

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed
      (And.intro E.indexEqualityClosed E.chernCharacterAppearsClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse