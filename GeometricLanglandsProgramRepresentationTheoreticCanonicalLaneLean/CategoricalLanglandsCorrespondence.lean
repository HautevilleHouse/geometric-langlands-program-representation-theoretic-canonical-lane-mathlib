import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure CategoricalLanglandsCorrespondence where
  spectralCategory : Type u
  automorphicCategory : Type v
  equivalence : Prop
  compatibilityWithHecke : Prop
  functorL : Type w
  functorR : Type x
  quasiInverse : Prop

structure CategoricalLanglandsEvidence (C : CategoricalLanglandsCorrespondence) where
  equivalenceClosed : C.equivalence
  compatibilityWithHeckeClosed : C.compatibilityWithHecke
  quasiInverseClosed : C.quasiInverse

def CategoricalLanglandsClosed (C : CategoricalLanglandsCorrespondence) : Prop :=
  C.equivalence ∧ C.compatibilityWithHecke ∧ C.quasiInverse

theorem categorical_langlands_closed_from_evidence (C : CategoricalLanglandsCorrespondence) (E : CategoricalLanglandsEvidence C) :
    CategoricalLanglandsClosed C := by
  exact And.intro E.equivalenceClosed (And.intro E.compatibilityWithHeckeClosed E.quasiInverseClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse