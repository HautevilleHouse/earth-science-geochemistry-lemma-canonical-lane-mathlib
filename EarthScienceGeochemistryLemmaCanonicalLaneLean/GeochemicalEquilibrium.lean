import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemicalEquilibriumPackage where
  solubilityProduct : Prop
  complexationConstant : Prop
  redoxPotential : Prop
  pHbalance : Prop

structure GeochemicalEquilibriumEvidence (G : GeochemicalEquilibriumPackage) where
  solubilityProductClosed : G.solubilityProduct
  complexationConstantClosed : G.complexationConstant
  redoxPotentialClosed : G.redoxPotential
  pHbalanceClosed : G.pHbalance

def GeochemicalEquilibriumClosed (G : GeochemicalEquilibriumPackage) : Prop :=
  G.solubilityProduct ∧ G.complexationConstant ∧ G.redoxPotential ∧ G.pHbalance

theorem geochemical_equilibrium_closed_from_evidence
    (G : GeochemicalEquilibriumPackage) (E : GeochemicalEquilibriumEvidence G) :
    GeochemicalEquilibriumClosed G := by
  exact And.intro E.solubilityProductClosed
    (And.intro E.complexationConstantClosed
      (And.intro E.redoxPotentialClosed E.pHbalanceClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
