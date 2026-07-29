import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure PrimitiveDNASequence where
  alphabet : Type
  bases : List alphabet
  alphabetTerm : alphabet
  basesNonempty : bases ≠ []

structure PrimitiveMutation where
  original : PrimitiveDNASequence
  mutated : PrimitiveDNASequence
  mutationType : String
  position : Nat
  originalBase : original.bases.get? position
  mutatedBase : mutated.bases.get? position
  mutationTypeEvidence : mutationType = "substitution" ∨ mutationType = "insertion" ∨ mutationType = "deletion"

structure PrimitivePopulationGenetics where
  individuals : Nat
  alleleFrequencies : List (Float × Float)
  equilibriumCondition : Prop
  hardyWeinbergHolds : Prop
  equilibriumConditionTerm : equilibriumCondition
  hardyWeinbergHoldsTerm : hardyWeinbergHolds

def PrimitiveMutationClosed (M : PrimitiveMutation) : Prop :=
  M.mutationTypeEvidence

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
