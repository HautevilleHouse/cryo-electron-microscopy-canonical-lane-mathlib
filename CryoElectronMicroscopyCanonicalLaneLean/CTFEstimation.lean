import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure CTFParameters where
  defocusU : ℝ
  defocusV : ℝ
  astigmatismAngle : ℝ
  sphericalAberration : ℝ
  amplitudeContrast : ℝ
  voltage : ℝ

structure CTFEstimationPackage (A : AdmissibleClass) where
  parameters : CTFParameters
  parameterAccuracy : Prop
  ctfModelValid : Prop
  parameterAccuracyClosed : parameterAccuracy
  ctfModelValidClosed : ctfModelValid

def CTFEstimationClosed {A : AdmissibleClass} (P : CTFEstimationPackage A) : Prop :=
  P.parameterAccuracy ∧ P.ctfModelValid

theorem ctf_estimation_closed_from_evidence {A : AdmissibleClass} (P : CTFEstimationPackage A) : CTFEstimationClosed P :=
  And.intro P.parameterAccuracyClosed P.ctfModelValidClosed

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse