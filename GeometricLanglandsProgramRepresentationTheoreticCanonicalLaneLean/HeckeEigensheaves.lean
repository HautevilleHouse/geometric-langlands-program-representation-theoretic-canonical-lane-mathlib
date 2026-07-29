import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure HeckeEigensheavesPackage where
  sheaf : Type u
  heckeOperator : Type u
  eigenvalue : Prop
  functoriality : Prop
  localization : Prop
  compatibility : Prop

structure HeckeEigensheavesEvidence (H : HeckeEigensheavesPackage) where
  eigenvalueClosed : H.eigenvalue
  functorialityClosed : H.functoriality
  localizationClosed : H.localization
  compatibilityClosed : H.compatibility

def HeckeEigensheavesClosed (H : HeckeEigensheavesPackage) : Prop :=
  H.eigenvalue ∧ H.functoriality ∧ H.localization ∧ H.compatibility

theorem hecke_eigensheaves_closed_from_evidence (H : HeckeEigensheavesPackage)
    (E : HeckeEigensheavesEvidence H) : HeckeEigensheavesClosed H :=
  And.intro E.eigenvalueClosed (And.intro E.functorialityClosed (And.intro E.localizationClosed E.compatibilityClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
