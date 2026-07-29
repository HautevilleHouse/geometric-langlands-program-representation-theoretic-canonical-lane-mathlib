import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure WhittakerSheafModel where
  whittakerCategory : Type u
  whittakerFunctor : Type v
  nondegeneracy : Prop
  sheafCondition : Prop
  factorizability : Prop

structure WhittakerSheafEvidence (W : WhittakerSheafModel) where
  nondegeneracyClosed : W.nondegeneracy
  sheafConditionClosed : W.sheafCondition
  factorizabilityClosed : W.factorizability

def WhittakerSheafClosed (W : WhittakerSheafModel) : Prop :=
  W.nondegeneracy ∧ W.sheafCondition ∧ W.factorizability

theorem whittaker_sheaf_closed_from_evidence (W : WhittakerSheafModel) (E : WhittakerSheafEvidence W) :
    WhittakerSheafClosed W := by
  exact And.intro E.nondegeneracyClosed (And.intro E.sheafConditionClosed E.factorizabilityClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse