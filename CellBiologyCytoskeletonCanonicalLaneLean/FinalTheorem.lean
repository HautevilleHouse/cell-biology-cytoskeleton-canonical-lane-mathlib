import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytoskeletonCanonicalLaneLean.ActinFilamentDynamics
import CellBiologyCytoskeletonCanonicalLaneLean.MicrotubuleDynamicInstability
import CellBiologyCytoskeletonCanonicalLaneLean.MotorProteinProcessivity
import CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonMechanics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CytoskeletonAdmittedObject where
  actinFilamentClosed : Prop
  microtubuleClosed : Prop
  motorProteinClosed : Prop
  mechanicsClosed : Prop
  conclusion : Prop

structure CytoskeletonAdmissibleClass where
  object : CytoskeletonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : CytoskeletonAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : CytoskeletonAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : CytoskeletonAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CytoskeletonAdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCytoskeletonClosure (A : CytoskeletonAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cytoskeleton_endgame (A : CytoskeletonAdmissibleClass) :
    ConstrainedCytoskeletonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
