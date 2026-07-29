import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure SpectralDecompositionPackage where
  param:: zero where
  LParameter : Prop
  spectralCurve : Prop
  eigenbundleOnCurve : Prop
  HiggsField : Prop

structure SpectralDecompositionEvidence (S : SpectralDecompositionPackage) where
  LParameterClosed : S.LParameter
  spectralCurveClosed : S.spectralCurve
  eigenbundleOnCurveClosed : S.eigenbundleOnCurve
  HiggsFieldClosed : S.HiggsField

def SpectralDecompositionClosed (S : SpectralDecompositionPackage) : Prop :=
  S.LParameter ∧ S.spectralCurve ∧ S.eigenbundleOnCurve ∧ S.HiggsField

theorem spectral_decomposition_closed_from_evidence (S : SpectralDecompositionPackage) (E : SpectralDecompositionEvidence S) : SpectralDecompositionClosed S := by
  exact And.intro E.LParameterClosed (And.intro E.spectralCurveClosed (And.intro E.eigenbundleOnCurveClosed E.HiggsFieldClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
