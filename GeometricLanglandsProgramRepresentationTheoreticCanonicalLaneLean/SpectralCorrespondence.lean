import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure SpectralCorrespondencePackage where
  automorphicSide : Type u
  spectralSide : Type u
  matching : Prop
  bijection : Prop
  functoriality : Prop
  derivedEnhancement : Prop

structure SpectralCorrespondenceEvidence (S : SpectralCorrespondencePackage) where
  matchingClosed : S.matching
  bijectionClosed : S.bijection
  functorialityClosed : S.functoriality
  derivedEnhancementClosed : S.derivedEnhancement

def SpectralCorrespondenceClosed (S : SpectralCorrespondencePackage) : Prop :=
  S.matching ∧ S.bijection ∧ S.functoriality ∧ S.derivedEnhancement

theorem spectral_correspondence_closed_from_evidence (S : SpectralCorrespondencePackage)
    (E : SpectralCorrespondenceEvidence S) : SpectralCorrespondenceClosed S :=
  And.intro E.matchingClosed (And.intro E.bijectionClosed (And.intro E.functorialityClosed E.derivedEnhancementClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
