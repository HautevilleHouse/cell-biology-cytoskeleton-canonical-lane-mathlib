import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CellMigrationPackage where
  lamellipodiumProtrusion : Prop
  filopodiumSensing : Prop
  cellAdhesionTurnover : Prop
  actomyosinContraction : Prop
  trailingEdgeRetraction : Prop

structure CellMigrationEvidence (pkg : CellMigrationPackage) where
  lamellipodiumProtrusionClosed : pkg.lamellipodiumProtrusion
  filopodiumSensingClosed : pkg.filopodiumSensing
  cellAdhesionTurnoverClosed : pkg.cellAdhesionTurnover
  actomyosinContractionClosed : pkg.actomyosinContraction
  trailingEdgeRetractionClosed : pkg.trailingEdgeRetraction

def CellMigrationClosed (pkg : CellMigrationPackage) : Prop :=
  pkg.lamellipodiumProtrusion ∧ pkg.filopodiumSensing ∧ pkg.cellAdhesionTurnover ∧ pkg.actomyosinContraction ∧ pkg.trailingEdgeRetraction

theorem cell_migration_closed_from_evidence (pkg : CellMigrationPackage) (E : CellMigrationEvidence pkg) :
    CellMigrationClosed pkg := by
  exact And.intro E.lamellipodiumProtrusionClosed
    (And.intro E.filopodiumSensingClosed
      (And.intro E.cellAdhesionTurnoverClosed
        (And.intro E.actomyosinContractionClosed E.trailingEdgeRetractionClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
