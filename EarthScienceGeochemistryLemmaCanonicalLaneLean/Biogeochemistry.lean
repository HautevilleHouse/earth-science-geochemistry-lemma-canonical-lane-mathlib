import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure BiogeochemistryPackage where
  nutrientCycling : Prop
  microbialMetabolism : Prop
  organicMatterDecomposition : Prop
  bioWeathering : Prop

structure BiogeochemistryEvidence (B : BiogeochemistryPackage) where
  nutrientCyclingClosed : B.nutrientCycling
  microbialMetabolismClosed : B.microbialMetabolism
  organicMatterDecompositionClosed : B.organicMatterDecomposition
  bioWeatheringClosed : B.bioWeathering

def BiogeochemistryClosed (B : BiogeochemistryPackage) : Prop :=
  B.nutrientCycling ∧ B.microbialMetabolism ∧ B.organicMatterDecomposition ∧ B.bioWeathering

theorem biogeochemistry_closed_from_evidence
    (B : BiogeochemistryPackage) (E : BiogeochemistryEvidence B) :
    BiogeochemistryClosed B := by
  exact And.intro E.nutrientCyclingClosed
    (And.intro E.microbialMetabolismClosed
      (And.intro E.organicMatterDecompositionClosed E.bioWeatheringClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
