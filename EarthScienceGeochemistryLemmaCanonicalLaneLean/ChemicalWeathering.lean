import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure ChemicalWeatheringPackage where
  mineralDissolution : Type u
  secondaryPrecipitation : Type v
  weatheringRate : Type w
  dissolutionRateLaw : Prop
  precipitationRateLaw : Prop
  surfaceComplexation : Prop
  rateDependenceOnPh : Prop

structure ChemicalWeatheringEvidence (C : ChemicalWeatheringPackage) where
  dissolutionRateLawClosed : C.dissolutionRateLaw
  precipitationRateLawClosed : C.precipitationRateLaw
  surfaceComplexationClosed : C.surfaceComplexation
  rateDependenceOnPhClosed : C.rateDependenceOnPh

def ChemicalWeatheringClosed (C : ChemicalWeatheringPackage) : Prop :=
  C.dissolutionRateLaw ∧ C.precipitationRateLaw ∧ C.surfaceComplexation ∧ C.rateDependenceOnPh

theorem chemical_weathering_closed_from_evidence (C : ChemicalWeatheringPackage) (E : ChemicalWeatheringEvidence C) :
    ChemicalWeatheringClosed C := by
  exact And.intro E.dissolutionRateLawClosed
    (And.intro E.precipitationRateLawClosed (And.intro E.surfaceComplexationClosed E.rateDependenceOnPhClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse