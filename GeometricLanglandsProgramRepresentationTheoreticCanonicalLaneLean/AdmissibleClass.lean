import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure AdmissibleClass where
  object : LanglandsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LanglandsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse