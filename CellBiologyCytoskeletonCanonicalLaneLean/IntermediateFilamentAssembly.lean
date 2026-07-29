import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure IntermediateFilamentPackage where
  subunitCohesion : Prop
  filamentElasticity : Prop
  lateralAssociation : Prop
  nuclearLamina : Prop
  tissueSpecificExpression : Prop

structure IntermediateFilamentEvidence (pkg : IntermediateFilamentPackage) where
  subunitCohesionClosed : pkg.subunitCohesion
  filamentElasticityClosed : pkg.filamentElasticity
  lateralAssociationClosed : pkg.lateralAssociation
  nuclearLaminaClosed : pkg.nuclearLamina
  tissueSpecificExpressionClosed : pkg.tissueSpecificExpression

def IntermediateFilamentClosed (pkg : IntermediateFilamentPackage) : Prop :=
  pkg.subunitCohesion ∧ pkg.filamentElasticity ∧ pkg.lateralAssociation ∧ pkg.nuclearLamina ∧ pkg.tissueSpecificExpression

theorem intermediate_filament_closed_from_evidence (pkg : IntermediateFilamentPackage) (E : IntermediateFilamentEvidence pkg) :
    IntermediateFilamentClosed pkg := by
  exact And.intro E.subunitCohesionClosed
    (And.intro E.filamentElasticityClosed
      (And.intro E.lateralAssociationClosed
        (And.intro E.nuclearLaminaClosed E.tissueSpecificExpressionClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
