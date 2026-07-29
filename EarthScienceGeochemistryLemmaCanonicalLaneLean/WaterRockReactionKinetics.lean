import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure WaterRockReactionPackage where
  temperatureKelvin : ℝ
  activationEnergyJoules : ℝ
  reactionRateMolM2Sec : ℝ
  surfaceAreaM2 : ℝ
  reactantConcentrationMolL : ℝ
  productConcentrationMolL : ℝ
  equilibriumConstant : ℝ

def rateFromTemperatureActivation (T : ℝ) (Ea : ℝ) : ℝ :=
  Real.exp (-Ea / (8.314 * T))

structure WaterRockReactionEvidence (W : WaterRockReactionPackage) where
  temperaturePositive : W.temperatureKelvin > 0
  activationEnergyPositive : W.activationEnergyJoules > 0
  reactionRatePositive : W.reactionRateMolM2Sec > 0
  surfaceAreaPositive : W.surfaceAreaM2 > 0

def WaterRockReactionClosed (W : WaterRockReactionPackage) : Prop :=
  W.temperatureKelvin > 0 ∧ W.activationEnergyJoules > 0 ∧ W.reactionRateMolM2Sec > 0 ∧ W.surfaceAreaM2 > 0

theorem water_rock_reaction_closed_from_evidence (W : WaterRockReactionPackage) (E : WaterRockReactionEvidence W) :
    WaterRockReactionClosed W := by
  exact And.intro E.temperaturePositive (And.intro E.activationEnergyPositive (And.intro E.reactionRatePositive E.surfaceAreaPositive))

structure GeochemistryAdmittedObject where
  rockType : String
  mineralComposition : String
  temperatureRange : ℝ × ℝ
  pressureRange : ℝ × ℝ
  conclusion : Prop

structure GeochemistryAdmissibleClass where
  object : GeochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : GeochemistryAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : GeochemistryAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : GeochemistryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GeochemistryAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse