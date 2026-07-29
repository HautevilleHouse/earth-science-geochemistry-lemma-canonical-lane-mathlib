import EarthScienceGeochemistryLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse