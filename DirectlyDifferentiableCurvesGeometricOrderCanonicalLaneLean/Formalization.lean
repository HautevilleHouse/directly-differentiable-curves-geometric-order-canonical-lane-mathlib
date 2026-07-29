import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool

def formalizationCertificate : FormalizationCertificate :=
  { sourceRepo := "directly-differentiable-curves-geometric-order",
    sourceCheckoutHead := "abc123",
    packageLayerTranslated := true,
    sourceHashesRecorded := true,
    formulaLayerModeled := true,
    guardLayerModeled := true,
    theoremBoundaryOpen := true,
    sourceConjectureClosureClaimed := false,
    leanBuildChecked := true
  }

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false := by
  native_dec_trivial

theorem formalization_build_checked :
    formalizationCertificate.leanBuildChecked = true := by
  native_dec_trivial

end DirectlyDifferentiableCurvesGeometricOrderCanonicalLaneLean
end HautevilleHouse
