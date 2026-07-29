import DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean.CurvatureInvariants

/-!
# Connection Theory Package
-/

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure ConnectionTheoryPackage {C : CurvatureInvariantsPackage} where
  covariantDerivative : Prop
  parallelTransport : Prop
  metricCompatibility : Prop
  christoffelSymbols : Prop

structure ConnectionTheoryEvidence {C : CurvatureInvariantsPackage}
    (T : ConnectionTheoryPackage C) where
  covariantDerivativeClosed : T.covariantDerivative
  parallelTransportClosed : T.parallelTransport
  metricCompatibilityClosed : T.metricCompatibility
  christoffelSymbolsClosed : T.christoffelSymbols

def ConnectionTheoryClosed {C : CurvatureInvariantsPackage}
    (T : ConnectionTheoryPackage C) : Prop :=
  T.covariantDerivative ∧ T.parallelTransport ∧ T.metricCompatibility ∧ T.christoffelSymbols

theorem connection_theory_closed_from_evidence {C : CurvatureInvariantsPackage}
    (T : ConnectionTheoryPackage C) (E : ConnectionTheoryEvidence T) :
    ConnectionTheoryClosed T := by
  exact And.intro E.covariantDerivativeClosed (And.intro E.parallelTransportClosed
    (And.intro E.metricCompatibilityClosed E.christoffelSymbolsClosed))

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse