import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure GeometricLanglandsAdmittedObject where
  reductiveGroup : Type u
  langlandsDualGroup : Type v
  categoryOfSheaves : Type w
  categoricalEquivalence : Prop
  conclusion : categoricalEquivalence

structure AdmissibleClass where
  object : GeometricLanglandsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeometricLanglandsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GeometricLanglandsWitnessClosed (O : GeometricLanglandsAdmittedObject) : Prop :=
  O.categoricalEquivalence

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse