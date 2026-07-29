import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CytoskeletonMechanicsPackage where
  elasticModulus : Prop
  viscoelasticResponse : Prop
  contractileForceGeneration : Prop
  networkCrosslinkingDensity : Prop
  poroelasticFluidFlow : Prop
  mechanotransductionSignaling : Prop

structure CytoskeletonMechanicsEvidence (C : CytoskeletonMechanicsPackage) where
  elasticModulusClosed : C.elasticModulus
  viscoelasticResponseClosed : C.viscoelasticResponse
  contractileForceGenerationClosed : C.contractileForceGeneration
  networkCrosslinkingDensityClosed : C.networkCrosslinkingDensity
  poroelasticFluidFlowClosed : C.poroelasticFluidFlow
  mechanotransductionSignalingClosed : C.mechanotransductionSignaling

def CytoskeletonMechanicsClosed (C : CytoskeletonMechanicsPackage) : Prop :=
  C.elasticModulus ∧ C.viscoelasticResponse ∧ C.contractileForceGeneration ∧
  C.networkCrosslinkingDensity ∧ C.poroelasticFluidFlow ∧ C.mechanotransductionSignaling

theorem cytoskeleton_mechanics_closed_from_evidence (C : CytoskeletonMechanicsPackage)
    (E : CytoskeletonMechanicsEvidence C) : CytoskeletonMechanicsClosed C := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.viscoelasticResponseClosed
      (And.intro E.contractileForceGenerationClosed
        (And.intro E.networkCrosslinkingDensityClosed
          (And.intro E.poroelasticFluidFlowClosed E.mechanotransductionSignalingClosed))))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
