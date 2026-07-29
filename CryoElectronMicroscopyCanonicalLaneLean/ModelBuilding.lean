import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure AtomicModel where
  atomPositions : List (ℝ × ℝ × ℝ)
  atomTypes : List String

structure ModelBuildingPackage (A : AdmissibleClass) where
  atomicModel : AtomicModel
  modelFitness : Prop
  stereochemistryValid : Prop
  modelFitnessClosed : modelFitness
  stereochemistryValidClosed : stereochemistryValid

def ModelBuildingClosed {A : AdmissibleClass} (P : ModelBuildingPackage A) : Prop :=
  P.modelFitness ∧ P.stereochemistryValid

theorem model_building_closed_from_evidence {A : AdmissibleClass} (P : ModelBuildingPackage A) : ModelBuildingClosed P :=
  And.intro P.modelFitnessClosed P.stereochemistryValidClosed

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse