import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure CryoEMStructureValidationPackage where
  mapQualityMetrics : Prop
  modelFitStatistics : Prop
  crossValidation : Prop
  resolutionEstimate : Prop
  depositionStandards : Prop

structure CryoEMStructureValidationEvidence (V : CryoEMStructureValidationPackage) where
  mapQualityMetricsClosed : V.mapQualityMetrics
  modelFitStatisticsClosed : V.modelFitStatistics
  crossValidationClosed : V.crossValidation
  resolutionEstimateClosed : V.resolutionEstimate
  depositionStandardsClosed : V.depositionStandards

def CryoEMStructureValidationClosed (V : CryoEMStructureValidationPackage) : Prop :=
  V.mapQualityMetrics ∧ V.modelFitStatistics ∧ V.crossValidation ∧ V.resolutionEstimate ∧ V.depositionStandards

theorem cryoem_structure_validation_closed_from_evidence (V : CryoEMStructureValidationPackage) (E : CryoEMStructureValidationEvidence V) : CryoEMStructureValidationClosed V := by
  exact And.intro E.mapQualityMetricsClosed (And.intro E.modelFitStatisticsClosed (And.intro E.crossValidationClosed (And.intro E.resolutionEstimateClosed E.depositionStandardsClosed)))

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse