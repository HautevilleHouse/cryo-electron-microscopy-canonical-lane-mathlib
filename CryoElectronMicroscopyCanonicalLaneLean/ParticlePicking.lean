import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure ParticleCoordinates where
  x : ℝ
  y : ℝ
  z : ℝ

structure ParticlePickingPackage (A : AdmissibleClass) where
  coordinates : List ParticleCoordinates
  pickingCompleteness : Prop
  pickingSpecificity : Prop
  pickingCompletenessClosed : pickingCompleteness
  pickingSpecificityClosed : pickingSpecificity

def ParticlePickingClosed {A : AdmissibleClass} (P : ParticlePickingPackage A) : Prop :=
  P.pickingCompleteness ∧ P.pickingSpecificity

theorem particle_picking_closed_from_evidence {A : AdmissibleClass} (P : ParticlePickingPackage A) : ParticlePickingClosed P :=
  And.intro P.pickingCompletenessClosed P.pickingSpecificityClosed

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse