import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure PopulationGeneticsModelPackage where
  effectivePopulationSize : Prop
  driftCoefficient : Prop
  selectionCoefficient : Prop
  mutationRate : Prop
  migrationRate : Prop

structure PopulationGeneticsModelEvidence (P : PopulationGeneticsModelPackage) where
  effectivePopulationSizeClosed : P.effectivePopulationSize
  driftCoefficientClosed : P.driftCoefficient
  selectionCoefficientClosed : P.selectionCoefficient
  mutationRateClosed : P.mutationRate
  migrationRateClosed : P.migrationRate

def PopulationGeneticsModelClosed (P : PopulationGeneticsModelPackage) : Prop :=
  P.effectivePopulationSize ∧ P.driftCoefficient ∧ P.selectionCoefficient ∧ P.mutationRate ∧ P.migrationRate

theorem population_genetics_model_closed_from_evidence (P : PopulationGeneticsModelPackage) (E : PopulationGeneticsModelEvidence P) : PopulationGeneticsModelClosed P := by
  exact And.intro E.effectivePopulationSizeClosed
    (And.intro E.driftCoefficientClosed
      (And.intro E.selectionCoefficientClosed
        (And.intro E.mutationRateClosed E.migrationRateClosed)))

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse