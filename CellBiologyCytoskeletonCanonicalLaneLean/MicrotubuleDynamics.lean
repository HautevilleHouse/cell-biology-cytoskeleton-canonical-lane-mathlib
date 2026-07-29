import CellBiologyCytoskeletonCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MicrotubuleBindingProtein where
  name : String
  bindingDomain : String
  affinity : Float

define MicrotubuleDynamicInstability where
  growthRate : Float
  shrinkageRate : Float
  catastropheFrequency : Float
  rescueFrequency : Float

structure MicrotubuleDynamicsPackage (A : AdmissibleClass) where
  plusEndTracker : MicrotubuleBindingProtein
  minusEndTracker : MicrotubuleBindingProtein
  dynamicInstability : MicrotubuleDynamicInstability
  nucleotideState : Prop
  endpointBinding : Prop
  dynamicUpdates : Prop
  evidence : A.gateWitness

def MicrotubuleDynamicsClosed (P : MicrotubuleDynamicsPackage A) : Prop :=
  P.nucleotideState ∧ P.endpointBinding ∧ P.dynamicUpdates

theorem microtubule_dynamics_closed_from_evidence (P : MicrotubuleDynamicsPackage A) :
    MicrotubuleDynamicsClosed P := by
  exact And.intro P.nucleotideState (And.intro P.endpointBinding P.dynamicUpdates)

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse