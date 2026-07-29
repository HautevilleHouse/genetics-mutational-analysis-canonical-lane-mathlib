import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  alignmentScore : Int
  identityPercent : Float
  gapCount : Nat
  alignmentValid : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScorePositive : S.alignmentScore > 0
  identityPercentThreshold : S.identityPercent >= 70.0
  gapCountAcceptable : S.gapCount ≤ S.querySequence.length / 5
  alignmentValidClosed : S.alignmentValid

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentValid

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact E.alignmentValidClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse