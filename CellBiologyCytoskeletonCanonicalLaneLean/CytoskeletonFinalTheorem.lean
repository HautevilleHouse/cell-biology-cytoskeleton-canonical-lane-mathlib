import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonBridgeLemmas
import HautevilleHouse.CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonGateLemmas

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

def ConstrainedCytoskeletonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cytoskeleton_endgame (A : AdmissibleClass) : ConstrainedCytoskeletonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
