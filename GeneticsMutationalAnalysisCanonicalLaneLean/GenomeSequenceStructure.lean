import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure GenomeAssembly where
  referenceId : String
  chromosomeCount : Nat
  basePairLength : Nat
  annotationStatus : Prop
  assemblyQuality : Prop

structure GenomeSequenceEvidence (G : GenomeAssembly) where
  referenceIdValid : G.referenceId = "GRCh38" ∨ G.referenceId = "GRCm39"
  chromosomeCountValid : G.chromosomeCount = 23 ∨ G.chromosomeCount = 20
  basePairLengthValid : G.basePairLength > 0
  annotationStatusClosed : G.annotationStatus
  assemblyQualityClosed : G.assemblyQuality

def GenomeSequenceClosed (G : GenomeAssembly) : Prop :=
  G.annotationStatus ∧ G.assemblyQuality

theorem genome_sequence_closed_from_evidence (G : GenomeAssembly) (E : GenomeSequenceEvidence G) : GenomeSequenceClosed G := by
  exact And.intro E.annotationStatusClosed E.assemblyQualityClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse