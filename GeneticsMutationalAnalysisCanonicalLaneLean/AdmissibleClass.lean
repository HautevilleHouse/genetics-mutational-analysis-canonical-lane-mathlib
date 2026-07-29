import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMutationalAnalysisCanonicalLaneLean

structure MutationalAdmissibleObject where
  organism : Type
  genome : Type
  mutation : genome → Prop
  hardyWeinbergEquilibrium : Prop
  linkageEquilibrium : Prop
  phylogenyConsistency : Prop
  conclusion : hardyWeinbergEquilibrium ∧ linkageEquilibrium ∧ phylogenyConsistency

structure AdmissibleClass where
  object : MutationalAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.hardyWeinbergEquilibrium ∧ A.object.linkageEquilibrium ∧ A.object.phylogenyConsistency) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsMutationalAnalysisCanonicalLaneLean
end HautevilleHouse