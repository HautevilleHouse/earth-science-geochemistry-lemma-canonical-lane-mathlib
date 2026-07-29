import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure IsotopeFractionationFactor where
  heavyIsotopeAbundance : ℝ
  lightIsotopeAbundance : ℝ
  fractionationFactorAlpha : ℝ
  temperatureKelvin : ℝ
  deltaValue : ℝ

def deltaFromAbundance (R_sample : ℝ) (R_standard : ℝ) : ℝ :=
  (R_sample / R_standard - 1) * 1000

def fractionationFactorFromDelta (δ : ℝ) : ℝ :=
  1 + δ / 1000

structure IsotopeEvidence (I : IsotopeFractionationFactor) where
  temperaturePositive : I.temperatureKelvin > 0
  heavyAbundancePositive : I.heavyIsotopeAbundance > 0
  lightAbundancePositive : I.lightIsotopeAbundance > 0
  alphaPositive : I.fractionationFactorAlpha > 0

def IsotopeFractionationClosed (I : IsotopeFractionationFactor) : Prop :=
  I.temperatureKelvin > 0 ∧ I.heavyIsotopeAbundance > 0 ∧ I.lightIsotopeAbundance > 0 ∧ I.fractionationFactorAlpha > 0

theorem isotope_fractionation_closed_from_evidence (I : IsotopeFractionationFactor) (E : IsotopeEvidence I) :
    IsotopeFractionationClosed I := by
  exact And.intro E.temperaturePositive (And.intro E.heavyAbundancePositive (And.intro E.lightAbundancePositive E.alphaPositive))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse