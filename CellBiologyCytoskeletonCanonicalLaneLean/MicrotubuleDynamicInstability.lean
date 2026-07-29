import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MicrotubulePackage where
  tubulinDimerConcentration : Prop
  nucleationCentrosome : Prop
  growthPhase : Prop
  catastropheFrequency : Prop
  rescueFrequency : Prop
  gtpCapStabilization : Prop

structure MicrotubuleEvidence (M : MicrotubulePackage) where
  tubulinDimerConcentrationClosed : M.tubulinDimerConcentration
  nucleationCentrosomeClosed : M.nucleationCentrosome
  growthPhaseClosed : M.growthPhase
  catastropheFrequencyClosed : M.catastropheFrequency
  rescueFrequencyClosed : M.rescueFrequency
  gtpCapStabilizationClosed : M.gtpCapStabilization

def MicrotubuleDynamicInstabilityClosed (M : MicrotubulePackage) : Prop :=
  M.tubulinDimerConcentration ∧ M.nucleationCentrosome ∧ M.growthPhase ∧
  M.catastropheFrequency ∧ M.rescueFrequency ∧ M.gtpCapStabilization

theorem microtubule_closed_from_evidence (M : MicrotubulePackage)
    (E : MicrotubuleEvidence M) : MicrotubuleDynamicInstabilityClosed M := by
  exact And.intro E.tubulinDimerConcentrationClosed
    (And.intro E.nucleationCentrosomeClosed
      (And.intro E.growthPhaseClosed
        (And.intro E.catastropheFrequencyClosed
          (And.intro E.rescueFrequencyClosed E.gtpCapStabilizationClosed))))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
