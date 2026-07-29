import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemicalCyclingPackage where
  carbonReservoir : Real
  nitrogenReservoir : Real
  sulfurReservoir : Real
  fluxRates : List Real
  cycleDuration : Real
  boundaryConditions : Prop

structure GeochemicalCyclingEvidence (P : GeochemicalCyclingPackage) where
  carbonReservoirClosed : P.carbonReservoir = 1.0e6
  nitrogenReservoirClosed : P.nitrogenReservoir = 2.0e5
  sulfurReservoirClosed : P.sulfurReservoir = 5.0e4
  fluxRatesClosed : P.fluxRates.length = 3
  cycleDurationClosed : P.cycleDuration > 0
  boundaryConditionsClosed : P.boundaryConditions

def GeochemicalCyclingClosed (P : GeochemicalCyclingPackage) : Prop :=
  P.carbonReservoir = 1.0e6 ∧ P.nitrogenReservoir = 2.0e5 ∧
  P.sulfurReservoir = 5.0e4 ∧ P.fluxRates.length = 3 ∧ P.cycleDuration > 0 ∧ P.boundaryConditions

theorem geochemical_cycling_closed_from_evidence
    (P : GeochemicalCyclingPackage) (E : GeochemicalCyclingEvidence P) :
    GeochemicalCyclingClosed P := by
  exact And.intro E.carbonReservoirClosed
    (And.intro E.nitrogenReservoirClosed
      (And.intro E.sulfurReservoirClosed
        (And.intro E.fluxRatesClosed
          (And.intro E.cycleDurationClosed E.boundaryConditionsClosed))))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse