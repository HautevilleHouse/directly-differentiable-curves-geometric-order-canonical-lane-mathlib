import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure HolonomyRepresentationPackage where
  manifold : Type u
  connection : Type v
  loopsBasedAtPoint : Type w
  holonomyGroup : Type x
  parallelTransportDefined : Prop
  groupHomomorphismProperty : Prop
  monodromyCompatible : Prop

structure HolonomyRepresentationEvidence (H : HolonomyRepresentationPackage) where
  parallelTransportDefinedClosed : H.parallelTransportDefined
  groupHomomorphismPropertyClosed : H.groupHomomorphismProperty
  monodromyCompatibleClosed : H.monodromyCompatible

def HolonomyRepresentationClosed (H : HolonomyRepresentationPackage) : Prop :=
  H.parallelTransportDefined ∧ H.groupHomomorphismProperty ∧ H.monodromyCompatible

theorem holonomy_representation_closed_from_evidence
    (H : HolonomyRepresentationPackage) (E : HolonomyRepresentationEvidence H) :
    HolonomyRepresentationClosed H := by
  exact And.intro E.parallelTransportDefinedClosed
    (And.intro E.groupHomomorphismPropertyClosed E.monodromyCompatibleClosed)

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse