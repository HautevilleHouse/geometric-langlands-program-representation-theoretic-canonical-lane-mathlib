import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure HeckeEigensheafPackage where
  cuspidalComponent : Prop
  eigenvalueSystem : Prop
  automorphicFormOnGroup : Prop
  sheafifiedLocalSystem : Prop

structure HeckeEigensheafEvidence (H : HeckeEigensheafPackage) where
  cuspidalComponentClosed : H.cuspidalComponent
  eigenvalueSystemClosed : H.eigenvalueSystem
  automorphicFormOnGroupClosed : H.automorphicFormOnGroup
  sheafifiedLocalSystemClosed : H.sheafifiedLocalSystem

def HeckeEigensheafClosed (H : HeckeEigensheafPackage) : Prop :=
  H.cuspidalComponent ∧ H.eigenvalueSystem ∧ H.automorphicFormOnGroup ∧ H.sheafifiedLocalSystem

theorem hecke_eigensheaf_closed_from_evidence (H : HeckeEigensheafPackage) (E : HeckeEigensheafEvidence H) : HeckeEigensheafClosed H := by
  exact And.intro E.cuspidalComponentClosed (And.intro E.eigenvalueSystemClosed (And.intro E.automorphicFormOnGroupClosed E.sheafifiedLocalSystemClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
