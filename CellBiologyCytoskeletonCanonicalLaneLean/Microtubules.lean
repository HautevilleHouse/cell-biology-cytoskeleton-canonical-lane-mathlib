import CellBiologyCytoskeletonCanonicalLaneLean.ActinFilaments

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MicrotubulePackage {F : CytoskeletonFoundationPackage}
    (A : ActinFilamentPackage F) where
  tubulinHeterodimer : Prop
  plusEndMinusEnd : Prop
  dynamicInstability : Prop
  catastropheRescue : Prop
  motorBinding : Prop

structure MicrotubuleEvidence {F : CytoskeletonFoundationPackage}
    {A : ActinFilamentPackage F} (M : MicrotubulePackage A) where
  tubulinHeterodimerClosed : M.tubulinHeterodimer
  plusEndMinusEndClosed : M.plusEndMinusEnd
  dynamicInstabilityClosed : M.dynamicInstability
  catastropheRescueClosed : M.catastropheRescue
  motorBindingClosed : M.motorBinding

def MicrotubuleClosed {F : CytoskeletonFoundationPackage}
    {A : ActinFilamentPackage F} (M : MicrotubulePackage A) : Prop :=
  M.tubulinHeterodimer ∧ M.plusEndMinusEnd ∧
  M.dynamicInstability ∧ M.catastropheRescue ∧ M.motorBinding

theorem microtubule_closed_from_evidence
    {F : CytoskeletonFoundationPackage} {A : ActinFilamentPackage F}
    (M : MicrotubulePackage A) (E : MicrotubuleEvidence M) :
    MicrotubuleClosed M := by
  exact And.intro E.tubulinHeterodimerClosed
    (And.intro E.plusEndMinusEndClosed
      (And.intro E.dynamicInstabilityClosed
        (And.intro E.catastropheRescueClosed E.motorBindingClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
