import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure GeodesicConvexityPackage where
  manifold : Type u
  metric : Type v
  geodesicConnectivity : Prop
  convexityAlongGeodesics : Prop
  uniquenessOfGeodesics : Prop
  exponentialMapWellDefined : Prop

structure GeodesicConvexityEvidence (G : GeodesicConvexityPackage) where
  geodesicConnectivityClosed : G.geodesicConnectivity
  convexityAlongGeodesicsClosed : G.convexityAlongGeodesics
  uniquenessOfGeodesicsClosed : G.uniquenessOfGeodesics
  exponentialMapWellDefinedClosed : G.exponentialMapWellDefined

def GeodesicConvexityClosed (G : GeodesicConvexityPackage) : Prop :=
  G.geodesicConnectivity ∧ G.convexityAlongGeodesics ∧
  G.uniquenessOfGeodesics ∧ G.exponentialMapWellDefined

theorem geodesic_convexity_closed_from_evidence (G : GeodesicConvexityPackage)
    (E : GeodesicConvexityEvidence G) : GeodesicConvexityClosed G := by
  exact And.intro E.geodesicConnectivityClosed
    (And.intro E.convexityAlongGeodesicsClosed
      (And.intro E.uniquenessOfGeodesicsClosed E.exponentialMapWellDefinedClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse