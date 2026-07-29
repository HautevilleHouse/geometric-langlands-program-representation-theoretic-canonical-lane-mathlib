import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure LanglandsAdmittedObject where
  space : Type
  localSystem : Prop
  automorphicForm : Prop
  galoisRepresentation : Prop
  lFunction : Prop
  conclusion : Prop

def LanglandsWitnessClosed (O : LanglandsAdmittedObject) : Prop :=
  O.conclusion

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse