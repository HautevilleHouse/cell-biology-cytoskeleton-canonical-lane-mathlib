import CellBiologyCytoskeletonCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure ActinMonomer where
  atpBound : Bool
  polymerizationCompetence : Prop

define ActinFilament where
  barbedEnd : Prop
  pointedEnd : Prop
  treadmillingRate : Float

structure ActinPolymerizationPackage (A : AdmissibleClass) where
  monomerPool : List ActinMonomer
  filament : ActinFilament
  nucleatingFactors : Prop
  cappingProteins : Prop
  severingProteins : Prop
  branchComplex : Prop
  evidence : A.gateWitness

def ActinPolymerizationClosed (P : ActinPolymerizationPackage A) : Prop :=
  P.nucleatingFactors ∧ P.cappingProteins ∧ P.severingProteins ∧ P.branchComplex

theorem actin_polymerization_closed_from_evidence (P : ActinPolymerizationPackage A) :
    ActinPolymerizationClosed P := by
  exact And.intro P.nucleatingFactors (And.intro P.cappingProteins (And.intro P.severingProteins P.branchComplex))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse