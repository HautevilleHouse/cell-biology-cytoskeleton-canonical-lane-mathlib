import CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonFoundation

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure ActinFilamentPackage {F : CytoskeletonFoundationPackage} where
  filamentPolymorphism : Prop
  treadmillingDynamics : Prop
  branchingNucleation : Prop
  crosslinkingRegulation : Prop
  forceGeneration : Prop

structure ActinFilamentEvidence {F : CytoskeletonFoundationPackage}
    (A : ActinFilamentPackage F) where
  filamentPolymorphismClosed : A.filamentPolymorphism
  treadmillingDynamicsClosed : A.treadmillingDynamics
  branchingNucleationClosed : A.branchingNucleation
  crosslinkingRegulationClosed : A.crosslinkingRegulation
  forceGenerationClosed : A.forceGeneration

def ActinFilamentClosed {F : CytoskeletonFoundationPackage}
    (A : ActinFilamentPackage F) : Prop :=
  A.filamentPolymorphism ∧ A.treadmillingDynamics ∧
  A.branchingNucleation ∧ A.crosslinkingRegulation ∧ A.forceGeneration

theorem actin_filament_closed_from_evidence
    {F : CytoskeletonFoundationPackage} (A : ActinFilamentPackage F)
    (E : ActinFilamentEvidence A) : ActinFilamentClosed A := by
  exact And.intro E.filamentPolymorphismClosed
    (And.intro E.treadmillingDynamicsClosed
      (And.intro E.branchingNucleationClosed
        (And.intro E.crosslinkingRegulationClosed E.forceGenerationClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
