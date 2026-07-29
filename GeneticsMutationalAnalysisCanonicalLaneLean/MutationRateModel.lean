import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure MutationRateModelPackage where
  mutationRate : Float
  effectivePopulationSize : Float
  selectionCoefficient : Float
  fixationProbability : Float
  rateEstimatesConverge : Prop
  modelIdentified : Prop

structure MutationRateModelEvidence (M : MutationRateModelPackage) where
  rateEstimatesConvergeClosed : M.rateEstimatesConverge
  modelIdentifiedClosed : M.modelIdentified

def MutationRateModelClosed (M : MutationRateModelPackage) : Prop :=
  M.rateEstimatesConverge ∧ M.modelIdentified

theorem mutation_rate_model_closed_from_evidence (M : MutationRateModelPackage) (E : MutationRateModelEvidence M) :
    MutationRateModelClosed M := by
  exact And.intro E.rateEstimatesConvergeClosed E.modelIdentifiedClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse