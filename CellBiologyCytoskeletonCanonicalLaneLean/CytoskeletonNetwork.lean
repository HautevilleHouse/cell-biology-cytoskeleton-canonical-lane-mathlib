import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.ActinPolymerization
import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.MicrotubuleDynamics
import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.MotorProteinTransport

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CytoskeletonNetworkPackage
    (A : ActinPolymerizationPackage) (M : MicrotubuleDynamicsPackage) (T : MotorProteinTransportPackage) where
  crosslinking : Prop
  mechanicalStability : Prop
  signalingIntegration : Prop
  networkClosed : Prop

structure CytoskeletonNetworkEvidence
    {A : ActinPolymerizationPackage} {M : MicrotubuleDynamicsPackage} {T : MotorProteinTransportPackage}
    (N : CytoskeletonNetworkPackage A M T) where
  crosslinkingClosed : N.crosslinking
  mechanicalStabilityClosed : N.mechanicalStability
  signalingIntegrationClosed : N.signalingIntegration

def CytoskeletonNetworkClosed
    {A : ActinPolymerizationPackage} {M : MicrotubuleDynamicsPackage} {T : MotorProteinTransportPackage}
    (N : CytoskeletonNetworkPackage A M T) : Prop :=
  N.crosslinking ∧ N.mechanicalStability ∧ N.signalingIntegration ∧ N.networkClosed

theorem cytoskeleton_network_closed_from_evidence
    {A : ActinPolymerizationPackage} {M : MicrotubuleDynamicsPackage} {T : MotorProteinTransportPackage}
    (N : CytoskeletonNetworkPackage A M T) (E : CytoskeletonNetworkEvidence N) :
    CytoskeletonNetworkClosed N := by
  exact And.intro E.crosslinkingClosed (And.intro E.mechanicalStabilityClosed
    (And.intro E.signalingIntegrationClosed N.networkClosed))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse