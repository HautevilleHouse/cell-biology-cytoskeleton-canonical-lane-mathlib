import CellBiologyCytoskeletonCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure AdmissibleClass where
  object : CytoskeletonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CytoskeletonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse