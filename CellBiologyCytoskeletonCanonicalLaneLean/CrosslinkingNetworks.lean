import CellBiologyCytoskeletonCanonicalLaneLean.MotorProteinTransport

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CrosslinkingNetworksPackage where
  crosslinkerType : Type
  bindingAffinity : Prop
  networkTopology : Prop
  mechanicalStiffness : Prop
  dynamicRebinding : Prop

structure CrosslinkingNetworksEvidence (C : CrosslinkingNetworksPackage) where
  bindingAffinityClosed : C.bindingAffinity
  networkTopologyClosed : C.networkTopology
  mechanicalStiffnessClosed : C.mechanicalStiffness
  dynamicRebindingClosed : C.dynamicRebinding

def CrosslinkingNetworksClosed (C : CrosslinkingNetworksPackage) : Prop :=
  C.bindingAffinity ∧ C.networkTopology ∧ C.mechanicalStiffness ∧ C.dynamicRebinding

theorem crosslinking_networks_closed_from_evidence
    (C : CrosslinkingNetworksPackage) (E : CrosslinkingNetworksEvidence C) :
    CrosslinkingNetworksClosed C := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.networkTopologyClosed
      (And.intro E.mechanicalStiffnessClosed E.dynamicRebindingClosed))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse