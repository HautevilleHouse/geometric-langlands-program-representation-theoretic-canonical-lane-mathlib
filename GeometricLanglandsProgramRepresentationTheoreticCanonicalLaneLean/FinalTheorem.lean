import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

def ConstrainedLanglandsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_langlands_endgame (A : AdmissibleClass) : ConstrainedLanglandsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
