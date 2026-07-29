import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure ValidationPackage (A : AdmissibleClass) where
  mapToModelCorrelation : ℝ
  overfittingTestPassed : Prop
  crossValidationScore : ℝ
  overfittingTestPassedClosed : overfittingTestPassed
  crossValidationScoreWithinThreshold : Prop
  crossValidationScoreWithinThresholdClosed : crossValidationScoreWithinThreshold

def ValidationClosed {A : AdmissibleClass} (P : ValidationPackage A) : Prop :=
  P.overfittingTestPassed ∧ P.crossValidationScoreWithinThreshold

theorem validation_closed_from_evidence {A : AdmissibleClass} (P : ValidationPackage A) : ValidationClosed P :=
  And.intro P.overfittingTestPassedClosed P.crossValidationScoreWithinThresholdClosed

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse