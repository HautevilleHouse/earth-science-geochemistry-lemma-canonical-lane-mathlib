import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Real
  equilibriumConstant : Real
  temperature : Real
  pressure : Real
  reactionQuotient : Real
  spontaneityCondition : Prop

structure ThermodynamicEquilibriumEvidence (P : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy = -100.0
  equilibriumConstantClosed : P.equilibriumConstant = 10.0
  temperatureClosed : P.temperature = 298.0
  pressureClosed : P.pressure = 1.0
  reactionQuotientClosed : P.reactionQuotient = 0.5
  spontaneityConditionClosed : P.spontaneityCondition

def ThermodynamicEquilibriumClosed (P : ThermodynamicEquilibriumPackage) : Prop :=
  P.gibbsFreeEnergy = -100.0 ∧ P.equilibriumConstant = 10.0 ∧
  P.temperature = 298.0 ∧ P.pressure = 1.0 ∧ P.reactionQuotient = 0.5 ∧ P.spontaneityCondition

theorem thermodynamic_equilibrium_closed_from_evidence
    (P : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence P) :
    ThermodynamicEquilibriumClosed P := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.temperatureClosed
        (And.intro E.pressureClosed
          (And.intro E.reactionQuotientClosed E.spontaneityConditionClosed))))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse