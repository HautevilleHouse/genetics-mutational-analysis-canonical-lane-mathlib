import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure MutationEffectPackage where
  mutationType : Type
  fitnessEffect : Type
  effectDirection : Prop
  effectMagnitude : Prop
  epistasisInteractions : Prop

structure MutationEffectEvidence (M : MutationEffectPackage) where
  effectDirectionClosed : M.effectDirection
  effectMagnitudeClosed : M.effectMagnitude
  epistasisInteractionsClosed : M.epistasisInteractions

def MutationEffectClosed (M : MutationEffectPackage) : Prop :=
  M.effectDirection ∧ M.effectMagnitude ∧ M.epistasisInteractions

theorem mutation_effect_closed_from_evidence (M : MutationEffectPackage)
    (E : MutationEffectEvidence M) : MutationEffectClosed M := by
  exact And.intro E.effectDirectionClosed
    (And.intro E.effectMagnitudeClosed E.epistasisInteractionsClosed)

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse
