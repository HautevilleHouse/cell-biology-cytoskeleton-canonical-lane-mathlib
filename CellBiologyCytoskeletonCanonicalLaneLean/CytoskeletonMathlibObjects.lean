import CellBiologyCytoskeletonCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CytoskeletonSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CytoskeletonAdmittedObject where
  space : CytoskeletonSpace
  isActinFilamentNetwork : Prop
  isMicrotubuleNetwork : Prop
  isIntermediateFilamentNetwork : Prop
  dynamicInstabilityModel : Type
  treadmillingModel : Type
  conclusion : dynamicInstabilityModel ∧ treadmillingModel

structure CytoskeletonEndgameState where
  object : CytoskeletonAdmittedObject

def CytoskeletonWitnessClosed (O : CytoskeletonAdmittedObject) : Prop :=
  O.dynamicInstabilityModel ∧ O.treadmillingModel

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse