import CellBiologyCytoskeletonCanonicalLaneLean.PolymerizationDynamics

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MotorProteinTransportPackage where
  motorType : Type
  stepSize : Prop
  velocity : Prop
  processivity : Prop
  cargoBinding : Prop
  atpConsumption : Prop

structure MotorProteinTransportEvidence (M : MotorProteinTransportPackage) where
  stepSizeClosed : M.stepSize
  velocityClosed : M.velocity
  processivityClosed : M.processivity
  cargoBindingClosed : M.cargoBinding
  atpConsumptionClosed : M.atpConsumption

def MotorProteinTransportClosed (M : MotorProteinTransportPackage) : Prop :=
  M.stepSize ∧ M.velocity ∧ M.processivity ∧ M.cargoBinding ∧ M.atpConsumption

theorem motor_protein_transport_closed_from_evidence
    (M : MotorProteinTransportPackage) (E : MotorProteinTransportEvidence M) :
    MotorProteinTransportClosed M := by
  exact And.intro E.stepSizeClosed
    (And.intro E.velocityClosed
      (And.intro E.processivityClosed
        (And.intro E.cargoBindingClosed E.atpConsumptionClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse