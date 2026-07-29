import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure ActinFilamentPackage where
  monomerPoolConcentration : Prop
  polymerizationRate : Prop
  depolymerizationRate : Prop
  treadmillingSteadyState : Prop
  branchingNucleation : Prop
  severingActivity : Prop

structure ActinFilamentEvidence (A : ActinFilamentPackage) where
  monomerPoolConcentrationClosed : A.monomerPoolConcentration
  polymerizationRateClosed : A.polymerizationRate
  depolymerizationRateClosed : A.depolymerizationRate
  treadmillingSteadyStateClosed : A.treadmillingSteadyState
  branchingNucleationClosed : A.branchingNucleation
  severingActivityClosed : A.severingActivity

def ActinFilamentClosed (A : ActinFilamentPackage) : Prop :=
  A.monomerPoolConcentration ∧ A.polymerizationRate ∧ A.depolymerizationRate ∧
  A.treadmillingSteadyState ∧ A.branchingNucleation ∧ A.severingActivity

theorem actin_filament_closed_from_evidence (A : ActinFilamentPackage)
    (E : ActinFilamentEvidence A) : ActinFilamentClosed A := by
  exact And.intro E.monomerPoolConcentrationClosed
    (And.intro E.polymerizationRateClosed
      (And.intro E.depolymerizationRateClosed
        (And.intro E.treadmillingSteadyStateClosed
          (And.intro E.branchingNucleationClosed E.severingActivityClosed))))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
