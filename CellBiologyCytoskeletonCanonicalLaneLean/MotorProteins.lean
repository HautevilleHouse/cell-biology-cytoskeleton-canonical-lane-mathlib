import CellBiologyCytoskeletonCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MotorProtein where
  name : String
  trackType : String
  direction : String
  stepSize : Float
  forceGeneration : Float

define MotorCargo where
  cargoType : String
  motorCount : Nat
  runLength : Float

structure MotorProteinPackage (A : AdmissibleClass) where
  processiveMotor : MotorProtein
  cargo : MotorCargo
  atpHydrolysis : Prop
  processiveRun : Prop
  cargoTransport : Prop
  evidence : A.gateWitness

def MotorProteinClosed (P : MotorProteinPackage A) : Prop :=
  P.atpHydrolysis ∧ P.processiveRun ∧ P.cargoTransport

theorem motor_protein_closed_from_evidence (P : MotorProteinPackage A) :
    MotorProteinClosed P := by
  exact And.intro P.atpHydrolysis (And.intro P.processiveRun P.cargoTransport)

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse