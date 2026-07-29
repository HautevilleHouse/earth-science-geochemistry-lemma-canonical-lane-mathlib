import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemicalTransportPackage where
  advectionCoefficient : Type u
  dispersionTensor : Type v
  reactionRateMatrix : Type w
  massConservation : Prop
  energyConservation : Prop
  boundaryConditionsSpecified : Prop
  numericalMethodConverges : Prop

structure GeochemicalTransportEvidence (T : GeochemicalTransportPackage) where
  massConservationClosed : T.massConservation
  energyConservationClosed : T.energyConservation
  boundaryConditionsSpecifiedClosed : T.boundaryConditionsSpecified
  numericalMethodConvergesClosed : T.numericalMethodConverges

def GeochemicalTransportClosed (T : GeochemicalTransportPackage) : Prop :=
  T.massConservation ∧ T.energyConservation ∧ T.boundaryConditionsSpecified ∧ T.numericalMethodConverges

theorem geochemical_transport_closed_from_evidence (T : GeochemicalTransportPackage) (E : GeochemicalTransportEvidence T) :
    GeochemicalTransportClosed T := by
  exact And.intro E.massConservationClosed (And.intro E.energyConservationClosed (And.intro E.boundaryConditionsSpecifiedClosed E.numericalMethodConvergesClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
