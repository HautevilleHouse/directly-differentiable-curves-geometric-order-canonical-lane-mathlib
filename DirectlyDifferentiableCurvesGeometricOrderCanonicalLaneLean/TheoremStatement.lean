import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean",
    theoremName := "DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean",
    theoremObject := "Geometric Order Theorem",
    classicalBoundary := "Open boundary: curvature invariants and holonomy classification remain classical.",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through admissible curves, geometric order, and reviewer bridge",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse