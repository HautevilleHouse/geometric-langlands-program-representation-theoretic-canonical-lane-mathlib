import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : CategoricalGaloisObject}
    (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : CategoricalGaloisObjectClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : CategoricalGaloisObject}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := categorical_galois_object_closed_from_evidence G C.curvatureEvidence
  }

-- Additional similar structures omitted for brevity

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse