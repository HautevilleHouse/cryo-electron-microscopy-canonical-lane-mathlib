import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure CryoEMImageFormationPackage where
  electronSource : Prop
  specimenInteraction : Prop
  lensAberrations : Prop
  detectorRecording : Prop
  contrastTransferFunction : Prop

structure CryoEMImageFormationEvidence (P : CryoEMImageFormationPackage) where
  electronSourceClosed : P.electronSource
  specimenInteractionClosed : P.specimenInteraction
  lensAberrationsClosed : P.lensAberrations
  detectorRecordingClosed : P.detectorRecording
  contrastTransferFunctionClosed : P.contrastTransferFunction

def CryoEMImageFormationClosed (P : CryoEMImageFormationPackage) : Prop :=
  P.electronSource ∧ P.specimenInteraction ∧ P.lensAberrations ∧ P.detectorRecording ∧ P.contrastTransferFunction

theorem cryoem_image_formation_closed_from_evidence (P : CryoEMImageFormationPackage) (E : CryoEMImageFormationEvidence P) : CryoEMImageFormationClosed P := by
  exact And.intro E.electronSourceClosed (And.intro E.specimenInteractionClosed (And.intro E.lensAberrationsClosed (And.intro E.detectorRecordingClosed E.contrastTransferFunctionClosed)))

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse