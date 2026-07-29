import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemicalThermodynamicsPackage where
  temperatureRange : Prop
  pressureRange : Prop
  equilibriumConstantModel : Prop
  phaseStability : Prop
  gibbsFreeEnergyMinimization : Prop

structure GeochemicalThermodynamicsEvidence (G : GeochemicalThermodynamicsPackage) where
  temperatureRangeClosed : G.temperatureRange
  pressureRangeClosed : G.pressureRange
  equilibriumConstantModelClosed : G.equilibriumConstantModel
  phaseStabilityClosed : G.phaseStability
  gibbsFreeEnergyMinimizationClosed : G.gibbsFreeEnergyMinimization

def GeochemicalThermodynamicsClosed (G : GeochemicalThermodynamicsPackage) : Prop :=
  G.temperatureRange ∧ G.pressureRange ∧ G.equilibriumConstantModel ∧ G.phaseStability ∧ G.gibbsFreeEnergyMinimization

theorem geochemical_thermodynamics_closed_from_evidence (G : GeochemicalThermodynamicsPackage) (E : GeochemicalThermodynamicsEvidence G) : GeochemicalThermodynamicsClosed G := by
  exact And.intro E.temperatureRangeClosed (And.intro E.pressureRangeClosed (And.intro E.equilibriumConstantModelClosed (And.intro E.phaseStabilityClosed E.gibbsFreeEnergyMinimizationClosed)))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse