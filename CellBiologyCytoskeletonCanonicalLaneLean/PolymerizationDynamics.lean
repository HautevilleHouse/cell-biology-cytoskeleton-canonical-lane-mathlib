import CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure PolymerizationDynamicsPackage where
  monomerConcentration : Prop
  nucleationRate : Prop
  elongationRate : Prop
  catastropheFrequency : Prop
  rescueFrequency : Prop

structure PolymerizationDynamicsEvidence (P : PolymerizationDynamicsPackage) where
  monomerConcentrationClosed : P.monomerConcentration
  nucleationRateClosed : P.nucleationRate
  elongationRateClosed : P.elongationRate
  catastropheFrequencyClosed : P.catastropheFrequency
  rescueFrequencyClosed : P.rescueFrequency

def PolymerizationDynamicsClosed (P : PolymerizationDynamicsPackage) : Prop :=
  P.monomerConcentration ∧ P.nucleationRate ∧ P.elongationRate ∧
  P.catastropheFrequency ∧ P.rescueFrequency

theorem polymerization_dynamics_closed_from_evidence
    (P : PolymerizationDynamicsPackage) (E : PolymerizationDynamicsEvidence P) :
    PolymerizationDynamicsClosed P := by
  exact And.intro E.monomerConcentrationClosed
    (And.intro E.nucleationRateClosed
      (And.intro E.elongationRateClosed
        (And.intro E.catastropheFrequencyClosed E.rescueFrequencyClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse