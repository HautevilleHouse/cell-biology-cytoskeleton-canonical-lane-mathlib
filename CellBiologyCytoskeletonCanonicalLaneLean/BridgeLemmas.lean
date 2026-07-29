import CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  cytoskeletonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse