import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerCount : Nat
  recombinationFraction : Float
  lodScore : Float
  pedigreeStructure : Prop
  linkagePresent : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScoreSignificant : L.lodScore > 3.0
  recombinationFractionValid : L.recombinationFraction >= 0.0 ∧ L.recombinationFraction <= 0.5
  pedigreeStructureClosed : L.pedigreeStructure
  linkagePresentClosed : L.linkagePresent

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkagePresent ∧ L.pedigreeStructure

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkagePresentClosed E.pedigreeStructureClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse