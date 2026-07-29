import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure WhittakerModelPackage {G : ReductiveGroupPackage} {B : BorelSubgroupPackage G} where
  characterData : Type u
  whittakerFunction : Type v
  nondegeneracy : Prop
  equivariance : Prop
  factorization : Prop

structure WhittakerModelEvidence {G : ReductiveGroupPackage} {B : BorelSubgroupPackage G} (W : WhittakerModelPackage G B) where
  nondegeneracyClosed : W.nondegeneracy
  equivarianceClosed : W.equivariance
  factorizationClosed : W.factorization

def WhittakerModelClosed {G : ReductiveGroupPackage} {B : BorelSubgroupPackage G} (W : WhittakerModelPackage G B) : Prop :=
  W.nondegeneracy ∧ W.equivariance ∧ W.factorization

theorem whittaker_model_closed_from_evidence {G : ReductiveGroupPackage} {B : BorelSubgroupPackage G} (W : WhittakerModelPackage G B) (E : WhittakerModelEvidence W) : WhittakerModelClosed W := by
  exact And.intro E.nondegeneracyClosed (And.intro E.equivarianceClosed E.factorizationClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse