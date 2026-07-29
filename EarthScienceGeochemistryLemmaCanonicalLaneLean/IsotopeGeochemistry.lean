import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure IsotopeGeochemistryPackage where
  fractionationFactor : Prop
  radioactiveDecay : Prop
  stableIsotopeRatio : Prop
  geochronology : Prop

structure IsotopeGeochemistryEvidence (I : IsotopeGeochemistryPackage) where
  fractionationFactorClosed : I.fractionationFactor
  radioactiveDecayClosed : I.radioactiveDecay
  stableIsotopeRatioClosed : I.stableIsotopeRatio
  geochronologyClosed : I.geochronology

def IsotopeGeochemistryClosed (I : IsotopeGeochemistryPackage) : Prop :=
  I.fractionationFactor ∧ I.radioactiveDecay ∧ I.stableIsotopeRatio ∧ I.geochronology

theorem isotope_geochemistry_closed_from_evidence
    (I : IsotopeGeochemistryPackage) (E : IsotopeGeochemistryEvidence I) :
    IsotopeGeochemistryClosed I := by
  exact And.intro E.fractionationFactorClosed
    (And.intro E.radioactiveDecayClosed
      (And.intro E.stableIsotopeRatioClosed E.geochronologyClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
