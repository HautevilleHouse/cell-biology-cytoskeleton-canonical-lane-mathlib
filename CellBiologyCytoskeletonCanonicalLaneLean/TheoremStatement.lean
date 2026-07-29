import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure CytoskeletonAdmittedObject where
  cell : Type
  cytoskeletonDescription : Prop
  dynamicInstability : Prop
  motorProteinActivity : Prop
  conclusion : dynamicInstability ∧ motorProteinActivity

def CytoskeletonWitnessClosed (O : CytoskeletonAdmittedObject) : Prop :=
  O.dynamicInstability ∧ O.motorProteinActivity

theorem cytoskeleton_witness_closed (O : CytoskeletonAdmittedObject) :
    CytoskeletonWitnessClosed O := by
  exact O.conclusion

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
