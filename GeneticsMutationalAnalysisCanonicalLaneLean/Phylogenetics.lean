import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure PhylogeneticsPackage where
  phylogeneticTree : Prop
  evolutionaryModel : Prop
  likelihoodComputation : Prop
  treeBuildingAlgorithm : Prop
  bootstrapSupport : Prop
  molecularClock : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  phylogeneticTreeClosed : P.phylogeneticTree
  evolutionaryModelClosed : P.evolutionaryModel
  likelihoodComputationClosed : P.likelihoodComputation
  treeBuildingAlgorithmClosed : P.treeBuildingAlgorithm
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockClosed : P.molecularClock

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.phylogeneticTree ∧ P.evolutionaryModel ∧ P.likelihoodComputation ∧
  P.treeBuildingAlgorithm ∧ P.bootstrapSupport ∧ P.molecularClock

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.phylogeneticTreeClosed
    (And.intro E.evolutionaryModelClosed
      (And.intro E.likelihoodComputationClosed
        (And.intro E.treeBuildingAlgorithmClosed
          (And.intro E.bootstrapSupportClosed
            E.molecularClockClosed))))

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
