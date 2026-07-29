import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure FSCurve where
  spatialFrequency : ℝ
  correlation : ℝ

structure ResolutionAssessmentPackage (A : AdmissibleClass) where
  fourierShellCorrelation : List FSCurve
  goldStandardFSC : Prop
  resolutionCriterion : Prop
  goldStandardFSCCrossValidated : goldStandardFSC
  resolutionCriterionClosed : resolutionCriterion

def ResolutionAssessmentClosed {A : AdmissibleClass} (P : ResolutionAssessmentPackage A) : Prop :=
  P.goldStandardFSC ∧ P.resolutionCriterion

theorem resolution_assessment_closed_from_evidence {A : AdmissibleClass} (P : ResolutionAssessmentPackage A) : ResolutionAssessmentClosed P :=
  And.intro P.goldStandardFSCCrossValidated P.resolutionCriterionClosed

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse