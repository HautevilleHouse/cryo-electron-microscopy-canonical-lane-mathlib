import CryoElectronMicroscopyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

def ConstrainedCryoEMClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cryo_em_endgame (A : AdmissibleClass) :
    ConstrainedCryoEMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse