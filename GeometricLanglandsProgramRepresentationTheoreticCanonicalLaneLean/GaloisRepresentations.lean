import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure GaloisRepresentationsPackage where
  field : Type u
  representationSpace : Type u
  continuousAction : Prop
  ladicCoherence : Prop
  compatibilityWithLocalLanglands : Prop
  localGlobalCompatibility : Prop

structure GaloisRepresentationsEvidence (G : GaloisRepresentationsPackage) where
  continuousActionClosed : G.continuousAction
  ladicCoherenceClosed : G.ladicCoherence
  compatibilityWithLocalLanglandsClosed : G.compatibilityWithLocalLanglands
  localGlobalCompatibilityClosed : G.localGlobalCompatibility

def GaloisRepresentationsClosed (G : GaloisRepresentationsPackage) : Prop :=
  G.continuousAction ∧ G.ladicCoherence ∧ G.compatibilityWithLocalLanglands ∧ G.localGlobalCompatibility

theorem galois_representations_closed_from_evidence (G : GaloisRepresentationsPackage)
    (E : GaloisRepresentationsEvidence G) : GaloisRepresentationsClosed G :=
  And.intro E.continuousActionClosed (And.intro E.ladicCoherenceClosed (And.intro E.compatibilityWithLocalLanglandsClosed E.localGlobalCompatibilityClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
