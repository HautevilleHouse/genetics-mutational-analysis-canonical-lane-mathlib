import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  distanceMatrix : List (List Float)
  treeTopology : Type u
  branchLengths : List Float
  treeConstructed : Prop
  molecularClock : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeConstructedClosed : P.treeConstructed
  molecularClockClosed : P.molecularClock

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeConstructed ∧ P.molecularClock

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.treeConstructedClosed E.molecularClockClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse