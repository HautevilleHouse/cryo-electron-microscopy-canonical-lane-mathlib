import CryoElectronMicroscopyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CryoElectronMicroscopyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CryoEMWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CryoElectronMicroscopyCanonicalLaneLean
end HautevilleHouse