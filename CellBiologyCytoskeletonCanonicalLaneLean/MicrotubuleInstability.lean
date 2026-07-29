import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure MicrotubulePackage where
  catastropheRate : Prop
  rescueRate : Prop
  tubulinGtpCap : Prop
  gtpHydrolysis : Prop
  plusEndTracking : Prop

structure MicrotubuleEvidence (pkg : MicrotubulePackage) where
  catastropheRateClosed : pkg.catastropheRate
  rescueRateClosed : pkg.rescueRate
  tubulinGtpCapClosed : pkg.tubulinGtpCap
  gtpHydrolysisClosed : pkg.gtpHydrolysis
  plusEndTrackingClosed : pkg.plusEndTracking

def MicrotubuleClosed (pkg : MicrotubulePackage) : Prop :=
  pkg.catastropheRate ∧ pkg.rescueRate ∧ pkg.tubulinGtpCap ∧ pkg.gtpHydrolysis ∧ pkg.plusEndTracking

theorem microtubule_closed_from_evidence (pkg : MicrotubulePackage) (E : MicrotubuleEvidence pkg) :
    MicrotubuleClosed pkg := by
  exact And.intro E.catastropheRateClosed
    (And.intro E.rescueRateClosed
      (And.intro E.tubulinGtpCapClosed
        (And.intro E.gtpHydrolysisClosed E.plusEndTrackingClosed)))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse
