import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure GenomeWideAssociationPackage where
  snpData : List (String × (Float × Float))
  pValueThreshold : Float
  significantSNPs : List String
  multipleTestingCorrection : Prop
  associationFound : Prop
  correctionApplied : Prop

structure GenomeWideAssociationEvidence (G : GenomeWideAssociationPackage) where
  associationFoundClosed : G.associationFound
  correctionAppliedClosed : G.correctionApplied

def GenomeWideAssociationClosed (G : GenomeWideAssociationPackage) : Prop :=
  G.associationFound ∧ G.correctionApplied

theorem genome_wide_association_closed_from_evidence (G : GenomeWideAssociationPackage) (E : GenomeWideAssociationEvidence G) :
    GenomeWideAssociationClosed G := by
  exact And.intro E.associationFoundClosed E.correctionAppliedClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse