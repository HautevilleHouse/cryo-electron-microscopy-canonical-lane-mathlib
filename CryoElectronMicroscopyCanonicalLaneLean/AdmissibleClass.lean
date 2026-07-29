import CryoElectronMicroscopyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

structure AdmissibleClass where
  object : CryoEMAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CryoEMWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse