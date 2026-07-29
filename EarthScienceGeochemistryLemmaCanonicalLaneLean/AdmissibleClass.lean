import EarthScienceGeochemistryLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : GeochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeochemistryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse