import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure CryoEMDataProcessingPackage where
  motionCorrection : Prop
  contrastTransferFunctionCorrection : Prop
  particleExtraction : Prop
  twoDClassification : Prop
  threeDInitialModel : Prop

structure CryoEMDataProcessingEvidence (D : CryoEMDataProcessingPackage) where
  motionCorrectionClosed : D.motionCorrection
  contrastTransferFunctionCorrectionClosed : D.contrastTransferFunctionCorrection
  particleExtractionClosed : D.particleExtraction
  twoDClassificationClosed : D.twoDClassification
  threeDInitialModelClosed : D.threeDInitialModel

def CryoEMDataProcessingClosed (D : CryoEMDataProcessingPackage) : Prop :=
  D.motionCorrection ∧ D.contrastTransferFunctionCorrection ∧ D.particleExtraction ∧ D.twoDClassification ∧ D.threeDInitialModel

theorem cryoem_data_processing_closed_from_evidence (D : CryoEMDataProcessingPackage) (E : CryoEMDataProcessingEvidence D) : CryoEMDataProcessingClosed D := by
  exact And.intro E.motionCorrectionClosed (And.intro E.contrastTransferFunctionCorrectionClosed (And.intro E.particleExtractionClosed (And.intro E.twoDClassificationClosed E.threeDInitialModelClosed)))

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse