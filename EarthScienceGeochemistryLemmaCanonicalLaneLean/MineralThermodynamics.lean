import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure MineralThermodynamicsPackage where
  mineralPhase : Type u
  gibbsFreeEnergy : Type v
  equilibriumConstant : Type w
  enthalpyFormation : Prop
  entropyFormation : Prop
  heatCapacityModel : Prop

structure MineralThermodynamicsEvidence (M : MineralThermodynamicsPackage) where
  enthalpyFormationClosed : M.enthalpyFormation
  entropyFormationClosed : M.entropyFormation
  heatCapacityModelClosed : M.heatCapacityModel

def MineralThermodynamicsClosed (M : MineralThermodynamicsPackage) : Prop :=
  M.enthalpyFormation ∧ M.entropyFormation ∧ M.heatCapacityModel

theorem mineral_thermodynamics_closed_from_evidence (M : MineralThermodynamicsPackage) (E : MineralThermodynamicsEvidence M) :
    MineralThermodynamicsClosed M := by
  exact And.intro E.enthalpyFormationClosed (And.intro E.entropyFormationClosed E.heatCapacityModelClosed)

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse