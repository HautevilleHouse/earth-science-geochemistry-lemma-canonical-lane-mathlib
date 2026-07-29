import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemistrySystem where
  environment : Type
  temperature : Float
  pressure : Float
  composition : Type

structure ThermodynamicSystem (G : GeochemistrySystem) where
  freeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  gibbsEnergy : Prop

structure ThermodynamicEvidence {G : GeochemistrySystem} (T : ThermodynamicSystem G) where
  freeEnergyClosed : T.freeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  gibbsEnergyClosed : T.gibbsEnergy

def ThermodynamicClosed {G : GeochemistrySystem} (T : ThermodynamicSystem G) : Prop :=
  T.freeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.gibbsEnergy

theorem thermodynamic_closed_from_evidence
    {G : GeochemistrySystem} (T : ThermodynamicSystem G)
    (E : ThermodynamicEvidence T) : ThermodynamicClosed T := by
  exact And.intro E.freeEnergyClosed
    (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed E.gibbsEnergyClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
