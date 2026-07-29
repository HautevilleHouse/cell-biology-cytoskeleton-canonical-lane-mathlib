import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure ActinPolymerizationPackage (A : AdmissibleClass) where
  nucleationRate : Prop
  elongationRate : Prop
  cappingProteinRegulation : Prop
  branchingProbability : Prop
  treadmillingSteadyState : Prop

structure ActinPolymerizationEvidence {A : AdmissibleClass} (P : ActinPolymerizationPackage A) where
  nucleationRateClosed : P.nucleationRate
  elongationRateClosed : P.elongationRate
  cappingProteinRegulationClosed : P.cappingProteinRegulation
  branchingProbabilityClosed : P.branchingProbability
  treadmillingSteadyStateClosed : P.treadmillingSteadyState

def ActinPolymerizationClosed {A : AdmissibleClass} (P : ActinPolymerizationPackage A) : Prop :=
  P.nucleationRate ∧ P.elongationRate ∧ P.cappingProteinRegulation ∧ P.branchingProbability ∧ P.treadmillingSteadyState

theorem actin_polymerization_closed_from_evidence
    {A : AdmissibleClass} (P : ActinPolymerizationPackage A) (E : ActinPolymerizationEvidence P) :
    ActinPolymerizationClosed P := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.elongationRateClosed
      (And.intro E.cappingProteinRegulationClosed
        (And.intro E.branchingProbabilityClosed E.treadmillingSteadyStateClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
