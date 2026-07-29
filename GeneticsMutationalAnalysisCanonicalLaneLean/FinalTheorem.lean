import canonicalLaneMathlib.AdmissibleClass
import GeneticsMutationalAnalysisCanonicalLaneLean.BridgeLemmas
import GeneticsMutationalAnalysisCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

def ConstrainedMutationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mutation_endgame (A : AdmissibleClass) : ConstrainedMutationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
