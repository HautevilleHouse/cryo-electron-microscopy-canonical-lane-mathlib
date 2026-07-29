import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure CryoEMTomographyPackage where
  tiltSeriesAcquisition : Prop
  alignmentReconstruction : Prop
  tomogramGeneration : Prop
  subtomogramAveraging : Prop
  inSituResolution : Prop

structure CryoEMTomographyEvidence (T : CryoEMTomographyPackage) where
  tiltSeriesAcquisitionClosed : T.tiltSeriesAcquisition
  alignmentReconstructionClosed : T.alignmentReconstruction
  tomogramGenerationClosed : T.tomogramGeneration
  subtomogramAveragingClosed : T.subtomogramAveraging
  inSituResolutionClosed : T.inSituResolution

def CryoEMTomographyClosed (T : CryoEMTomographyPackage) : Prop :=
  T.tiltSeriesAcquisition ∧ T.alignmentReconstruction ∧ T.tomogramGeneration ∧ T.subtomogramAveraging ∧ T.inSituResolution

theorem cryoem_tomography_closed_from_evidence (T : CryoEMTomographyPackage) (E : CryoEMTomographyEvidence T) : CryoEMTomographyClosed T := by
  exact And.intro E.tiltSeriesAcquisitionClosed (And.intro E.alignmentReconstructionClosed (And.intro E.tomogramGenerationClosed (And.intro E.subtomogramAveragingClosed E.inSituResolutionClosed)))

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse