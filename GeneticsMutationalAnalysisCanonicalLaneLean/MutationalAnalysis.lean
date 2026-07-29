import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure MutationalAnalysisPackage where
  mutationRates : Prop
  mutationalSpectrum : Prop
  hotspotIdentification : Prop
  functionalImpact : Prop
  pathogenicityPrediction : Prop
  populationFrequency : Prop

structure MutationalAnalysisEvidence (M : MutationalAnalysisPackage) where
  mutationRatesClosed : M.mutationRates
  mutationalSpectrumClosed : M.mutationalSpectrum
  hotspotIdentificationClosed : M.hotspotIdentification
  functionalImpactClosed : M.functionalImpact
  pathogenicityPredictionClosed : M.pathogenicityPrediction
  populationFrequencyClosed : M.populationFrequency

def MutationalAnalysisClosed (M : MutationalAnalysisPackage) : Prop :=
  M.mutationRates ∧ M.mutationalSpectrum ∧ M.hotspotIdentification ∧
  M.functionalImpact ∧ M.pathogenicityPrediction ∧ M.populationFrequency

theorem mutational_analysis_closed_from_evidence (M : MutationalAnalysisPackage)
    (E : MutationalAnalysisEvidence M) : MutationalAnalysisClosed M := by
  exact And.intro E.mutationRatesClosed
    (And.intro E.mutationalSpectrumClosed
      (And.intro E.hotspotIdentificationClosed
        (And.intro E.functionalImpactClosed
          (And.intro E.pathogenicityPredictionClosed
            E.populationFrequencyClosed))))

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
