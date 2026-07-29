import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure SingleParticleReconstructionPackage where
  particlePicking : Prop
  classAlignment : Prop
  angularReconstruction : Prop
  refinementCycles : Prop
  resolutionAssessment : Prop

structure SingleParticleReconstructionEvidence (R : SingleParticleReconstructionPackage) where
  particlePickingClosed : R.particlePicking
  classAlignmentClosed : R.classAlignment
  angularReconstructionClosed : R.angularReconstruction
  refinementCyclesClosed : R.refinementCycles
  resolutionAssessmentClosed : R.resolutionAssessment

def SingleParticleReconstructionClosed (R : SingleParticleReconstructionPackage) : Prop :=
  R.particlePicking ∧ R.classAlignment ∧ R.angularReconstruction ∧ R.refinementCycles ∧ R.resolutionAssessment

theorem single_particle_reconstruction_closed_from_evidence (R : SingleParticleReconstructionPackage) (E : SingleParticleReconstructionEvidence R) : SingleParticleReconstructionClosed R := by
  exact And.intro E.particlePickingClosed (And.intro E.classAlignmentClosed (And.intro E.angularReconstructionClosed (And.intro E.refinementCyclesClosed E.resolutionAssessmentClosed)))

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse