import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure SpeciationModelingPackage where
  aqueousSpecies : Type u
  complexationConstant : Type v
  ionActivityModel : Type w
  massActionLaw : Prop
  chargeBalance : Prop
  redoxEquilibria : Prop

structure SpeciationModelingEvidence (S : SpeciationModelingPackage) where
  massActionLawClosed : S.massActionLaw
  chargeBalanceClosed : S.chargeBalance
  redoxEquilibriaClosed : S.redoxEquilibria

def SpeciationModelingClosed (S : SpeciationModelingPackage) : Prop :=
  S.massActionLaw ∧ S.chargeBalance ∧ S.redoxEquilibria

theorem speciation_modeling_closed_from_evidence (S : SpeciationModelingPackage) (E : SpeciationModelingEvidence S) :
    SpeciationModelingClosed S := by
  exact And.intro E.massActionLawClosed (And.intro E.chargeBalanceClosed E.redoxEquilibriaClosed)

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse