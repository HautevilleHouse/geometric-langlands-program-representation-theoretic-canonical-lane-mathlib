import GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean.GateLemmas

/-!
# Categorical Equivalence Package
-/

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure CategoricalEquivalencePackage where
  sheafCategory : Type u
  moduliStack : Type v
  HeckeEigenvalues : Prop
  geometricSatake : Prop
  BravermanGaitsgoryConjecture : Prop

structure CategoricalEquivalenceEvidence (C : CategoricalEquivalencePackage) where
  HeckeEigenvaluesClosed : C.HeckeEigenvalues
  geometricSatakeClosed : C.geometricSatake
  BravermanGaitsgoryConjectureClosed : C.BravermanGaitsgoryConjecture

def CategoricalEquivalenceClosed (C : CategoricalEquivalencePackage) : Prop :=
  C.HeckeEigenvalues ∧ C.geometricSatake ∧ C.BravermanGaitsgoryConjecture

theorem categorical_equivalence_closed_from_evidence
    (C : CategoricalEquivalencePackage) (E : CategoricalEquivalenceEvidence C) :
    CategoricalEquivalenceClosed C := by
  exact And.intro E.HeckeEigenvaluesClosed (And.intro E.geometricSatakeClosed E.BravermanGaitsgoryConjectureClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse