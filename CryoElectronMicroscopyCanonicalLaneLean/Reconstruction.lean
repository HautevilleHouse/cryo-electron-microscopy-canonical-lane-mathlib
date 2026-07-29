import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure ReconstructionPackage (A : AdmissibleClass) where
  densityMap : Type u
  resolutionEstimate : ℝ
  reconstructionConverged : Prop
  artifactFree : Prop
  reconstructionConvergedClosed : reconstructionConverged
  artifactFreeClosed : artifactFree

def ReconstructionClosed {A : AdmissibleClass} (P : ReconstructionPackage A) : Prop :=
  P.reconstructionConverged ∧ P.artifactFree

theorem reconstruction_closed_from_evidence {A : AdmissibleClass} (P : ReconstructionPackage A) : ReconstructionClosed P :=
  And.intro P.reconstructionConvergedClosed P.artifactFreeClosed

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse