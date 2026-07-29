import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean.PerelmanEntropy

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure NoncollapsingPackage {G : CategoricalGaloisObject}
    {F : DerivedCategoryPackage G} (Epkg : PerverseTStructurePackage F) where
  noLocalCollapsing : Prop
  scaleInvariantVolumeLowerBound : Prop
  curvatureScaleCompatibility : Prop
  ancientSolutionCompactnessInput : Prop

structure NoncollapsingEvidence {G : CategoricalGaloisObject}
    {F : DerivedCategoryPackage G} {Epkg : PerverseTStructurePackage F}
    (N : NoncollapsingPackage Epkg) where
  noLocalCollapsingClosed : N.noLocalCollapsing
  scaleInvariantVolumeLowerBoundClosed : N.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibilityClosed : N.curvatureScaleCompatibility
  ancientSolutionCompactnessInputClosed : N.ancientSolutionCompactnessInput

def NoncollapsingClosed {G : CategoricalGaloisObject}
    {F : DerivedCategoryPackage G} {Epkg : PerverseTStructurePackage F}
    (N : NoncollapsingPackage Epkg) : Prop :=
  N.noLocalCollapsing ∧ N.scaleInvariantVolumeLowerBound ∧
  N.curvatureScaleCompatibility ∧ N.ancientSolutionCompactnessInput

theorem noncollapsing_closed_from_evidence
    {G : CategoricalGaloisObject} {F : DerivedCategoryPackage G}
    {Epkg : PerverseTStructurePackage F}
    (N : NoncollapsingPackage Epkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.noLocalCollapsingClosed
    (And.intro E.scaleInvariantVolumeLowerBoundClosed
      (And.intro E.curvatureScaleCompatibilityClosed E.ancientSolutionCompactnessInputClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse