import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure GeneticsAdmittedObject where
  species : Type
  genome : Type
  sequenceData : List (List (Char))
  mutationRates : List (Prop)
  conclusion : Prop

structure GeneticsAdmissibleClass where
  object : GeneticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GeneticsAdmittedClosure (A : GeneticsAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : GeneticsAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : GeneticsAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : GeneticsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GeneticsAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse