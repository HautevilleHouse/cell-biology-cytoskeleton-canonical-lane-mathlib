import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MotorProteinPackage where
  kinesinProcessivity : Prop
  dyneinDirectionality : Prop
  myosinContractility : Prop
  stepSize : Prop
  atpHydrolysisCoupling : Prop

structure MotorProteinEvidence (pkg : MotorProteinPackage) where
  kinesinProcessivityClosed : pkg.kinesinProcessivity
  dyneinDirectionalityClosed : pkg.dyneinDirectionality
  myosinContractilityClosed : pkg.myosinContractility
  stepSizeClosed : pkg.stepSize
  atpHydrolysisCouplingClosed : pkg.atpHydrolysisCoupling

def MotorProteinClosed (pkg : MotorProteinPackage) : Prop :=
  pkg.kinesinProcessivity ∧ pkg.dyneinDirectionality ∧ pkg.myosinContractility ∧ pkg.stepSize ∧ pkg.atpHydrolysisCoupling

theorem motor_protein_closed_from_evidence (pkg : MotorProteinPackage) (E : MotorProteinEvidence pkg) :
    MotorProteinClosed pkg := by
  exact And.intro E.kinesinProcessivityClosed
    (And.intro E.dyneinDirectionalityClosed
      (And.intro E.myosinContractilityClosed
        (And.intro E.stepSizeClosed E.atpHydrolysisCouplingClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
