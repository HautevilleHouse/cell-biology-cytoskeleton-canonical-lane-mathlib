import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.polymerDynamics ∧ A.object.forceGeneration

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
