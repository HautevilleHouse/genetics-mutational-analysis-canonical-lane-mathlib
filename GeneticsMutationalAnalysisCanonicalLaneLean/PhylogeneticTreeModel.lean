import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxonCount : Nat
  treeTopology : Prop
  branchLengths : List Float
  bootstrapSupport : List Float
  treeConsistent : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  taxonCountValid : P.taxonCount ≥ 2
  treeTopologyClosed : P.treeTopology
  branchLengthsNonnegative : ∀ b ∈ P.branchLengths, b ≥ 0.0
  bootstrapSupportHigh : ∀ bs ∈ P.bootstrapSupport, bs ≥ 70.0
  treeConsistentClosed : P.treeConsistent

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeConsistent ∧ P.treeTopology

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeConsistentClosed E.treeTopologyClosed

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse