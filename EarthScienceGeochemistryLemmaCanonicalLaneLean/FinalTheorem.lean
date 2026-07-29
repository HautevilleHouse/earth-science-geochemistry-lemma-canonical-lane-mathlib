import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

def ConstrainedGeochemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geochemistry_endgame (A : AdmissibleClass) :
    ConstrainedGeochemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse