import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LanglandsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse