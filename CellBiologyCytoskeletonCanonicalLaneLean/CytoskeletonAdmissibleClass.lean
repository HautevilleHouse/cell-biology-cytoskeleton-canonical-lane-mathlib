import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CytoskeletonAdmittedObject where
  filamentType : Type
  motorProtein : Type
  polymerizationState : Prop
  depolymerizationState : Prop
  crosslinkingState : Prop
  mechanicalStability : Prop
  conclusion : mechanicalStability

def cytoskeletonWitnessClosed (O : CytoskeletonAdmittedObject) : Prop :=
  O.mechanicalStability

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse