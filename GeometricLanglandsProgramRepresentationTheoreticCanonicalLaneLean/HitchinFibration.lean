import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure HitchinFibrationPackage where
  curve : Type u
  bundle : Type u
  fiber : Prop
  properness : Prop
  connectivity : Prop
  abelianization : Prop

structure HitchinFibrationEvidence (H : HitchinFibrationPackage) where
  fiberClosed : H.fiber
  propernessClosed : H.properness
  connectivityClosed : H.connectivity
  abelianizationClosed : H.abelianization

def HitchinFibrationClosed (H : HitchinFibrationPackage) : Prop :=
  H.fiber ∧ H.properness ∧ H.connectivity ∧ H.abelianization

theorem hitchin_fibration_closed_from_evidence (H : HitchinFibrationPackage)
    (E : HitchinFibrationEvidence H) : HitchinFibrationClosed H :=
  And.intro E.fiberClosed (And.intro E.propernessClosed (And.intro E.connectivityClosed E.abelianizationClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
