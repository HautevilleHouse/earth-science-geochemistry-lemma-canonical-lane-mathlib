import EarthScienceGeochemistryLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemistryAdmittedObject where
  carrier : Type
  equilibriumCondition : Prop
  rateLawSatisfied : Prop
  thermodynamicConsistency : Prop
  conclusion : equilibriumCondition ∧ rateLawSatisfied ∧ thermodynamicConsistency

def GeochemistryWitnessClosed (O : GeochemistryAdmittedObject) : Prop :=
  O.equilibriumCondition ∧ O.rateLawSatisfied ∧ O.thermodynamicConsistency

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse