import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeochemistryLemmaCanonicalLaneLean

structure GeochemicalDatabasePackage where
  mineralPhases : List String
  aqueousSpecies : List String
  gasSpecies : List String
  thermodynamicDataConsistent : Prop
  kineticDataAvailable : Prop
  databaseVersioned : Prop
  provenanceRecorded : Prop

structure GeochemicalDatabaseEvidence (D : GeochemicalDatabasePackage) where
  thermodynamicDataConsistentClosed : D.thermodynamicDataConsistent
  kineticDataAvailableClosed : D.kineticDataAvailable
  databaseVersionedClosed : D.databaseVersioned
  provenanceRecordedClosed : D.provenanceRecorded

def GeochemicalDatabaseClosed (D : GeochemicalDatabasePackage) : Prop :=
  D.thermodynamicDataConsistent ∧ D.kineticDataAvailable ∧ D.databaseVersioned ∧ D.provenanceRecorded

theorem geochemical_database_closed_from_evidence (D : GeochemicalDatabasePackage) (E : GeochemicalDatabaseEvidence D) :
    GeochemicalDatabaseClosed D := by
  exact And.intro E.thermodynamicDataConsistentClosed (And.intro E.kineticDataAvailableClosed (And.intro E.databaseVersionedClosed E.provenanceRecordedClosed))

end EarthScienceGeochemistryLemmaCanonicalLaneLean
end HautevilleHouse
