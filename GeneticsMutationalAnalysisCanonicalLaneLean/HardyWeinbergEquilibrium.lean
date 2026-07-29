import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure HardyWeinbergPackage where
  genotypeFrequencies : Prop
  alleleFrequencies : Prop
  expectedEquilibrium : Prop
  deviationTest : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  genotypeFrequenciesClosed : H.genotypeFrequencies
  alleleFrequenciesClosed : H.alleleFrequencies
  expectedEquilibriumClosed : H.expectedEquilibrium
  deviationTestClosed : H.deviationTest

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.genotypeFrequencies ∧ H.alleleFrequencies ∧
  H.expectedEquilibrium ∧ H.deviationTest

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.genotypeFrequenciesClosed
    (And.intro E.alleleFrequenciesClosed
      (And.intro E.expectedEquilibriumClosed E.deviationTestClosed))

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
