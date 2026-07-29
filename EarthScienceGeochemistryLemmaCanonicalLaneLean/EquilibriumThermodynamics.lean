import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure ThermodynamicParameters where
  temperatureKelvin : ℝ
  pressureBar : ℝ
  gibbsFreeEnergyChangeJoules : ℝ
  enthalpyChangeJoules : ℝ
  entropyChangeJoulesPerKelvin : ℝ
  equilibriumConstantDerived : ℝ

def gibbsFreeEnergy (H : ℝ) (T : ℝ) (S : ℝ) : ℝ :=
  H - T * S

def equilibriumConstantFromGibbs (ΔG : ℝ) (T : ℝ) : ℝ :=
  Real.exp (-ΔG / (8.314 * T))

structure ThermodynamicEvidence (Tp : ThermodynamicParameters) where
  temperaturePositive : Tp.temperatureKelvin > 0
  pressureNonnegative : Tp.pressureBar ≥ 0
  gibbsFreeEnergyFinite : Tp.gibbsFreeEnergyChangeJoules ≠ 0

def ThermodynamicClosed (Tp : ThermodynamicParameters) : Prop :=
  Tp.temperatureKelvin > 0 ∧ Tp.pressureBar ≥ 0 ∧ Tp.gibbsFreeEnergyChangeJoules ≠ 0

theorem thermodynamic_closed_from_evidence (Tp : ThermodynamicParameters) (E : ThermodynamicEvidence Tp) :
    ThermodynamicClosed Tp := by
  exact And.intro E.temperaturePositive (And.intro E.pressureNonnegative E.gibbsFreeEnergyFinite)

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse