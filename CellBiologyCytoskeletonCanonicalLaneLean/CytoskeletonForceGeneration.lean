import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CytoskeletonForceGenerationPackage (A : AdmissibleClass) where
  actinPolymerizationForce : Prop
  microtubuleBuckling : Prop
  contractileActomyosin : Prop
  filopodiaProtrusion : Prop
  cellMigrationCoupled : Prop

structure CytoskeletonForceGenerationEvidence {A : AdmissibleClass} (F : CytoskeletonForceGenerationPackage A) where
  actinPolymerizationForceClosed : F.actinPolymerizationForce
  microtubuleBucklingClosed : F.microtubuleBuckling
  contractileActomyosinClosed : F.contractileActomyosin
  filopodiaProtrusionClosed : F.filopodiaProtrusion
  cellMigrationCoupledClosed : F.cellMigrationCoupled

def CytoskeletonForceGenerationClosed {A : AdmissibleClass} (F : CytoskeletonForceGenerationPackage A) : Prop :=
  F.actinPolymerizationForce ∧ F.microtubuleBuckling ∧ F.contractileActomyosin ∧ F.filopodiaProtrusion ∧ F.cellMigrationCoupled

theorem cytoskeleton_force_generation_closed_from_evidence
    {A : AdmissibleClass} (F : CytoskeletonForceGenerationPackage A) (E : CytoskeletonForceGenerationEvidence F) :
    CytoskeletonForceGenerationClosed F := by
  exact And.intro E.actinPolymerizationForceClosed
    (And.intro E.microtubuleBucklingClosed
      (And.intro E.contractileActomyosinClosed
        (And.intro E.filopodiaProtrusionClosed E.cellMigrationCoupledClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
