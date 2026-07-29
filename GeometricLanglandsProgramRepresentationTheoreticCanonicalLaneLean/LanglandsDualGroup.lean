import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure LanglandsDualGroupPackage where
  rootDatum : Type u
  dualRootDatum : Type u
  weylGroup : Type u
  dualityPairing : Prop
  satakeIsomorphism : Prop
  langlandsDualConstructed : Prop

structure LanglandsDualGroupEvidence (L : LanglandsDualGroupPackage) where
  dualityPairingClosed : L.dualityPairing
  satakeIsomorphismClosed : L.satakeIsomorphism
  langlandsDualConstructedClosed : L.langlandsDualConstructed

def LanglandsDualGroupClosed (L : LanglandsDualGroupPackage) : Prop :=
  L.dualityPairing ∧ L.satakeIsomorphism ∧ L.langlandsDualConstructed

theorem langlands_dual_group_closed_from_evidence (L : LanglandsDualGroupPackage)
    (E : LanglandsDualGroupEvidence L) : LanglandsDualGroupClosed L :=
  And.intro E.dualityPairingClosed (And.intro E.satakeIsomorphismClosed E.langlandsDualConstructedClosed)

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
