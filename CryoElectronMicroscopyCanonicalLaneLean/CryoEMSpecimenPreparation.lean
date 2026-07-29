import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure CryoEMSpecimenPreparationPackage where
  purification : Prop
  gridPreparation : Prop
  vitrification : Prop
  iceThickness : Prop
  specimenQuality : Prop

structure CryoEMSpecimenPreparationEvidence (S : CryoEMSpecimenPreparationPackage) where
  purificationClosed : S.purification
  gridPreparationClosed : S.gridPreparation
  vitrificationClosed : S.vitrification
  iceThicknessClosed : S.iceThickness
  specimenQualityClosed : S.specimenQuality

def CryoEMSpecimenPreparationClosed (S : CryoEMSpecimenPreparationPackage) : Prop :=
  S.purification ∧ S.gridPreparation ∧ S.vitrification ∧ S.iceThickness ∧ S.specimenQuality

theorem cryoem_specimen_preparation_closed_from_evidence (S : CryoEMSpecimenPreparationPackage) (E : CryoEMSpecimenPreparationEvidence S) : CryoEMSpecimenPreparationClosed S := by
  exact And.intro E.purificationClosed (And.intro E.gridPreparationClosed (And.intro E.vitrificationClosed (And.intro E.iceThicknessClosed E.specimenQualityClosed)))

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse