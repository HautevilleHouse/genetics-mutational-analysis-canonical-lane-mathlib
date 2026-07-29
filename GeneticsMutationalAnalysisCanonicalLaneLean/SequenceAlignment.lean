import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  alignmentScore : Int
  gapPenalty : Int
  matchScore : Int
  mismatchScore : Int
  optimalAlignment : Prop
  alignmentFound : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentClosed : S.optimalAlignment
  alignmentFoundClosed : S.alignmentFound

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignment ∧ S.alignmentFound

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.optimalAlignmentClosed E.alignmentFoundClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse