import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure TraceElementGeochemistryPackage where
  partitionCoefficientModel : Prop
  incompatibleElementBehavior : Prop
  spiderDiagramNormalization : Prop
  mantleMeltingModel : Prop
  crustalContaminationIndicator : Prop

structure TraceElementGeochemistryEvidence (T : TraceElementGeochemistryPackage) where
  partitionCoefficientModelClosed : T.partitionCoefficientModel
  incompatibleElementBehaviorClosed : T.incompatibleElementBehavior
  spiderDiagramNormalizationClosed : T.spiderDiagramNormalization
  mantleMeltingModelClosed : T.mantleMeltingModel
  crustalContaminationIndicatorClosed : T.crustalContaminationIndicator

def TraceElementGeochemistryClosed (T : TraceElementGeochemistryPackage) : Prop :=
  T.partitionCoefficientModel ∧ T.incompatibleElementBehavior ∧ T.spiderDiagramNormalization ∧ T.mantleMeltingModel ∧ T.crustalContaminationIndicator

theorem trace_element_geochemistry_closed_from_evidence (T : TraceElementGeochemistryPackage) (E : TraceElementGeochemistryEvidence T) : TraceElementGeochemistryClosed T := by
  exact And.intro E.partitionCoefficientModelClosed (And.intro E.incompatibleElementBehaviorClosed (And.intro E.spiderDiagramNormalizationClosed (And.intro E.mantleMeltingModelClosed E.crustalContaminationIndicatorClosed)))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse