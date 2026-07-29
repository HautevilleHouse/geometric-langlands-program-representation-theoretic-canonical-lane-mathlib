import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean

structure QuantumGeometricLanglandsPackage {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} (C : CurvePackage) where
  quantizationParameter : Prop
  quantumConnection : Type u
  deformationKernel : Type v
  correspondence : Prop
  flatness : Prop

structure QuantumGeometricLanglandsEvidence {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} {C : CurvePackage} (Q : QuantumGeometricLanglandsPackage G L C) where
  correspondenceClosed : Q.correspondence
  flatnessClosed : Q.flatness

def QuantumGeometricLanglandsClosed {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} {C : CurvePackage} (Q : QuantumGeometricLanglandsPackage G L C) : Prop :=
  Q.correspondence ∧ Q.flatness

theorem quantum_geometric_langlands_closed_from_evidence {G : ReductiveGroupPackage} {L : LanglandsDualityPackage G} {C : CurvePackage} (Q : QuantumGeometricLanglandsPackage G L C) (E : QuantumGeometricLanglandsEvidence Q) : QuantumGeometricLanglandsClosed Q := by
  exact And.intro E.correspondenceClosed E.flatnessClosed

end GeometricLanglandsProgramRepresentationTheoreticCanonicalLaneLean
end HautevilleHouse