import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MotorProteinPackage where
  atpHydrolysisRate : Prop
  trackBindingAffinity : Prop
  stepSize : Prop
  runLength : Prop
  detachmentFrequency : Prop
  cargoTransportCapacity : Prop

structure MotorProteinEvidence (M : MotorProteinPackage) where
  atpHydrolysisRateClosed : M.atpHydrolysisRate
  trackBindingAffinityClosed : M.trackBindingAffinity
  stepSizeClosed : M.stepSize
  runLengthClosed : M.runLength
  detachmentFrequencyClosed : M.detachmentFrequency
  cargoTransportCapacityClosed : M.cargoTransportCapacity

def MotorProteinProcessivityClosed (M : MotorProteinPackage) : Prop :=
  M.atpHydrolysisRate ∧ M.trackBindingAffinity ∧ M.stepSize ∧
  M.runLength ∧ M.detachmentFrequency ∧ M.cargoTransportCapacity

theorem motor_protein_closed_from_evidence (M : MotorProteinPackage)
    (E : MotorProteinEvidence M) : MotorProteinProcessivityClosed M := by
  exact And.intro E.atpHydrolysisRateClosed
    (And.intro E.trackBindingAffinityClosed
      (And.intro E.stepSizeClosed
        (And.intro E.runLengthClosed
          (And.intro E.detachmentFrequencyClosed E.cargoTransportCapacityClosed))))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
