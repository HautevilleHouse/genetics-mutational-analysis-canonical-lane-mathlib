import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure PhylogeneticReconstructionPackage where
  sequenceAlignment : Prop
  substitutionModel : Prop
  treeTopology : Prop
  branchLengthEstimation : Prop
  likelihoodCalculation : Prop

structure PhylogeneticReconstructionEvidence (P : PhylogeneticReconstructionPackage) where
  sequenceAlignmentClosed : P.sequenceAlignment
  substitutionModelClosed : P.substitutionModel
  treeTopologyClosed : P.treeTopology
  branchLengthEstimationClosed : P.branchLengthEstimation
  likelihoodCalculationClosed : P.likelihoodCalculation

def PhylogeneticReconstructionClosed (P : PhylogeneticReconstructionPackage) : Prop :=
  P.sequenceAlignment ∧ P.substitutionModel ∧
  P.treeTopology ∧ P.branchLengthEstimation ∧ P.likelihoodCalculation

theorem phylogenetic_reconstruction_closed_from_evidence
    (P : PhylogeneticReconstructionPackage)
    (E : PhylogeneticReconstructionEvidence P) : PhylogeneticReconstructionClosed P := by
  exact And.intro E.sequenceAlignmentClosed
    (And.intro E.substitutionModelClosed
      (And.intro E.treeTopologyClosed
        (And.intro E.branchLengthEstimationClosed E.likelihoodCalculationClosed)))

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
