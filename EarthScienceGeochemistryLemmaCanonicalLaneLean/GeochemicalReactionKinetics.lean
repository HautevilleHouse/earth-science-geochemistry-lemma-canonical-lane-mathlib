import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemicalReactionKineticsPackage where
  forwardRateConstant : Nat
  backwardRateConstant : Nat
  activationEnergy : Real
  temperature : Real
  rateLawExpression : Prop
  equilibriumConstant : Prop

structure GeochemicalReactionKineticsEvidence (P : GeochemicalReactionKineticsPackage) where
  forwardRateConstantClosed : P.forwardRateConstant = 1
  backwardRateConstantClosed : P.backwardRateConstant = 1
  activationEnergyClosed : P.activationEnergy > 0
  temperatureClosed : P.temperature > 0
  rateLawExpressionClosed : P.rateLawExpression
  equilibriumConstantClosed : P.equilibriumConstant

def GeochemicalReactionKineticsClosed (P : GeochemicalReactionKineticsPackage) : Prop :=
  P.forwardRateConstant = 1 ∧ P.backwardRateConstant = 1 ∧
  P.activationEnergy > 0 ∧ P.temperature > 0 ∧ P.rateLawExpression ∧ P.equilibriumConstant

theorem geochemical_reaction_kinetics_closed_from_evidence
    (P : GeochemicalReactionKineticsPackage) (E : GeochemicalReactionKineticsEvidence P) :
    GeochemicalReactionKineticsClosed P := by
  exact And.intro E.forwardRateConstantClosed
    (And.intro E.backwardRateConstantClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.temperatureClosed
          (And.intro E.rateLawExpressionClosed E.equilibriumConstantClosed))))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse