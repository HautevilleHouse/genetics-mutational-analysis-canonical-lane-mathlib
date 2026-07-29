import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure LinkageAnalysisPackage where
  pedigree : Type u
  markers : List String
  recombinationFraction : Float
  lodScore : Float
  significantLinkage : Prop
  linkageEquilibrium : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  significantLinkageClosed : L.significantLinkage
  linkageEquilibriumClosed : L.linkageEquilibrium

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.significantLinkage ∧ L.linkageEquilibrium

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.significantLinkageClosed E.linkageEquilibriumClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse