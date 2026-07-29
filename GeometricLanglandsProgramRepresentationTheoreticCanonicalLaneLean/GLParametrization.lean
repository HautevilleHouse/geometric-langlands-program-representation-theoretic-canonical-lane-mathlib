import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure GLParametrizationPackage where
  reductiveGroup : Type u
  langlandsDual : Type u
  parabolicSubgroup : Type u
  cuspidalData : Prop
  parameterSheaf : Prop
  galoisRepresentation : Prop

structure GLParametrizationEvidence (P : GLParametrizationPackage) where
  cuspidalDataClosed : P.cuspidalData
  parameterSheafClosed : P.parameterSheaf
  galoisRepresentationClosed : P.galoisRepresentation

def GLParametrizationClosed (P : GLParametrizationPackage) : Prop :=
  P.cuspidalData ∧ P.parameterSheaf ∧ P.galoisRepresentation

theorem gl_parametrization_closed_from_evidence (P : GLParametrizationPackage)
    (E : GLParametrizationEvidence P) : GLParametrizationClosed P :=
  And.intro E.cuspidalDataClosed (And.intro E.parameterSheafClosed E.galoisRepresentationClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
