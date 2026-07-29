import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure GeometricSatakePackage where
  perverseSheafOnGrassmannian : Prop
  convolutionProduct : Prop
  mapToRepresentationCategory : Prop
  factorizationProperty : Prop

structure GeometricSatakeEvidence (G : GeometricSatakePackage) where
  perverseSheafOnGrassmannianClosed : G.perverseSheafOnGrassmannian
  convolutionProductClosed : G.convolutionProduct
  mapToRepresentationCategoryClosed : G.mapToRepresentationCategory
  factorizationPropertyClosed : G.factorizationProperty

def GeometricSatakeClosed (G : GeometricSatakePackage) : Prop :=
  G.perverseSheafOnGrassmannian ∧ G.convolutionProduct ∧ G.mapToRepresentationCategory ∧ G.factorizationProperty

theorem geometric_satake_closed_from_evidence (G : GeometricSatakePackage) (E : GeometricSatakeEvidence G) : GeometricSatakeClosed G := by
  exact And.intro E.perverseSheafOnGrassmannianClosed (And.intro E.convolutionProductClosed (And.intro E.mapToRepresentationCategoryClosed E.factorizationPropertyClosed))

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse
