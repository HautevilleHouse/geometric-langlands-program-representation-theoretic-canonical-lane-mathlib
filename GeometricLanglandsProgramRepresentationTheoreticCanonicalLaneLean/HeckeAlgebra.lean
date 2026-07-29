import GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean.EndoscopicClassification

/-!
# Hecke Algebra Package
-/

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure HeckeAlgebraPackage where
  HeckeAlgebra : Type u
  SatakeIsomorphism : Prop
  sphericalHeckeAlgebra : Prop
  actionOnSheaves : Prop

structure HeckeAlgebraEvidence (H : HeckeAlgebraPackage) where
  SatakeIsomorphismClosed : H.SatakeIsomorphism
  sphericalHeckeAlgebraClosed : H.sphericalHeckeAlgebra
  actionOnSheavesClosed : H.actionOnSheaves

def HeckeAlgebraClosed (H : HeckeAlgebraPackage) : Prop :=
  H.SatakeIsomorphism ∧ H.sphericalHeckeAlgebra ∧ H.actionOnSheaves

theorem hecke_algebra_closed_from_evidence
    (H : HeckeAlgebraPackage) (E : HeckeAlgebraEvidence H) : HeckeAlgebraClosed H := by
  exact And.intro E.SatakeIsomorphismClosed (And.intro E.sphericalHeckeAlgebraClosed E.actionOnSheavesClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse