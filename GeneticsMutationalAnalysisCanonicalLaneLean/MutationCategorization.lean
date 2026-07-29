import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure MutationPackage where
  variantType : String
  geneName : String
  chromosomeLocation : String
  impactScore : Float
  pathogenicity : Prop

structure MutationEvidence (M : MutationPackage) where
  variantTypeValid : M.variantType ∈ ["SNP", "INDEL", "CNV", "Structural"]
  geneticAnnotationPresent : M.geneName ≠ "" ∧ M.chromosomeLocation ≠ ""
  impactScoreRelevant : M.impactScore ≥ 0.5
  pathogenicityClosed : M.pathogenicity

def MutationClosed (M : MutationPackage) : Prop :=
  M.pathogenicity

theorem mutation_closed_from_evidence (M : MutationPackage) (E : MutationEvidence M) : MutationClosed M := by
  exact E.pathogenicityClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse