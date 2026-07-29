import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
