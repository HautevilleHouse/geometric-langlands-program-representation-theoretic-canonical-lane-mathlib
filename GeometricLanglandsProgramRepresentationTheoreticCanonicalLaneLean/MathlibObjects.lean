import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Abelian.Basic

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

open CategoryTheory

structure CategoricalGaloisObject where
  carrier : Type 1
  abelianCategory : Abelian carrier
  derivedCategory : Type 1
  derivedAbelian : Abelian derivedCategory
  perverseTStructure : Prop
  perverseTStructureTerm : perverseTStructure

structure GeometricLanglandsAdmittedObject where
  categoricalObject : CategoricalGaloisObject
  langlandsDualGroup : Type 1
  localSystem : Prop
  geometricLanglandsConjectureStatement : Prop
  conclusion : geometricLanglandsConjectureStatement

structure GeometricLanglandsEndgameState where
  object : GeometricLanglandsAdmittedObject

def GeometricLanglandsWitnessClosed (O : GeometricLanglandsAdmittedObject) : Prop :=
  O.geometricLanglandsConjectureStatement

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse