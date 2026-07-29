import EarthScienceGeochemistryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeochemistryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse