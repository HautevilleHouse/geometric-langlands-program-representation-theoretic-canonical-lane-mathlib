import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure WildRamificationPackage {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} (S : SingularityPackage L) where
  ramificationData : Type u
  irregularSingularity : Prop
  stokesStructure : Prop
  wildFrobenius : Prop

structure WildRamificationEvidence {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} {S : SingularityPackage L} (W : WildRamificationPackage S) where
  irregularSingularityClosed : W.irregularSingularity
  stokesStructureClosed : W.stokesStructure
  wildFrobeniusClosed : W.wildFrobenius

def WildRamificationClosed {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} {S : SingularityPackage L} (W : WildRamificationPackage S) : Prop :=
  W.irregularSingularity ∧ W.stokesStructure ∧ W.wildFrobenius

theorem wild_ramification_closed_from_evidence {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} {S : SingularityPackage L} (W : WildRamificationPackage S) (E : WildRamificationEvidence W) : WildRamificationClosed W := by
  exact And.intro E.irregularSingularityClosed (And.intro E.stokesStructureClosed E.wildFrobeniusClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse