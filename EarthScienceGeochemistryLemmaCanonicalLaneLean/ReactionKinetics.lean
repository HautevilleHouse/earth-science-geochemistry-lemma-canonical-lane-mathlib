import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Prop
  activationEnergy : Prop
  reactionOrder : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateConstantClosed : R.rateConstant
  activationEnergyClosed : R.activationEnergy
  reactionOrderClosed : R.reactionOrder
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateConstant ∧ R.activationEnergy ∧ R.reactionOrder ∧ R.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence
    (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateConstantClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.reactionOrderClosed E.equilibriumConstantClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
