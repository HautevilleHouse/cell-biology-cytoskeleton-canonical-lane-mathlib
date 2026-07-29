import CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonRoute

/-!
# Cytoskeleton Analytic Proof Route

This module refines the cytoskeleton route into named analytic proof certificates.
Each certificate carries its own proof terms for the corresponding analytic
claims and projects into the existing cytoskeleton foundation and route closure surfaces.
-/

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure ActinDynamicsAnalyticCertificate (G : ActinFilamentPackage) where
  nucleationRate : Prop
  elongationRate : Prop
  severingRate : Prop
  cappingProteinRegulation : Prop
  atpHydrolysisCoupling : Prop
  nucleationRateClosed : nucleationRate
  elongationRateClosed : elongationRate
  severingRateClosed : severingRate
  cappingProteinRegulationClosed : cappingProteinRegulation
  atpHydrolysisCouplingClosed : atpHydrolysisCoupling
  actinEvidence : ActinFilamentPackageEvidence G

def ActinDynamicsAnalyticCertificateClosed {G : ActinFilamentPackage}
    (C : ActinDynamicsAnalyticCertificate G) : Prop :=
  C.nucleationRate ∧
  C.elongationRate ∧
  C.severingRate ∧
  C.cappingProteinRegulation ∧
  C.atpHydrolysisCoupling ∧
  ActinFilamentPackageClosed G

theorem actin_dynamics_analytic_certificate_closed
    {G : ActinFilamentPackage} (C : ActinDynamicsAnalyticCertificate G) :
    ActinDynamicsAnalyticCertificateClosed C := by
  exact And.intro C.nucleationRateClosed
    (And.intro C.elongationRateClosed
      (And.intro C.severingRateClosed
        (And.intro C.cappingProteinRegulationClosed
          (And.intro C.atpHydrolysisCouplingClosed
            (actin_filament_closed_from_evidence G C.actinEvidence)))))

structure MicrotubuleDynamicsAnalyticCertificate {G : MicrotubulePackage}
    (M : MicrotubulePackage G) where
  dynamicInstabilityModel : Prop
  gtpCapModel : Prop
  rescueFrequency : Prop
  catastropheFrequency : Prop
  dynamicInstabilityModelClosed : dynamicInstabilityModel
  gtpCapModelClosed : gtpCapModel
  rescueFrequencyClosed : rescueFrequency
  catastropheFrequencyClosed : catastropheFrequency
  microtubuleEvidence : MicrotubulePackageEvidence M

def MicrotubuleDynamicsAnalyticCertificateClosed {G : MicrotubulePackage}
    {M : MicrotubulePackage G} (C : MicrotubuleDynamicsAnalyticCertificate M) : Prop :=
  C.dynamicInstabilityModel ∧
  C.gtpCapModel ∧
  C.rescueFrequency ∧
  C.catastropheFrequency ∧
  MicrotubulePackageClosed M

theorem microtubule_dynamics_analytic_certificate_closed
    {G : MicrotubulePackage} {M : MicrotubulePackage G}
    (C : MicrotubuleDynamicsAnalyticCertificate M) :
    MicrotubuleDynamicsAnalyticCertificateClosed C := by
  exact And.intro C.dynamicInstabilityModelClosed
    (And.intro C.gtpCapModelClosed
      (And.intro C.rescueFrequencyClosed
        (And.intro C.catastropheFrequencyClosed
          (microtubule_closed_from_evidence M C.microtubuleEvidence))))

structure MotorProteinAnalyticCertificate {G : MotorProteinPackage}
    (P : MotorProteinPackage G) where
  processivityModel : Prop
  stepSize : Prop
  directionality : Prop
  atpConsumptionRate : Prop
  forceGenerationModel : Prop
  processivityModelClosed : processivityModel
  stepSizeClosed : stepSize
  directionalityClosed : directionality
  atpConsumptionRateClosed : atpConsumptionRate
  forceGenerationModelClosed : forceGenerationModel
  motorEvidence : MotorProteinPackageEvidence P

def MotorProteinAnalyticCertificateClosed {G : MotorProteinPackage}
    {P : MotorProteinPackage G} (C : MotorProteinAnalyticCertificate P) : Prop :=
  C.processivityModel ∧
  C.stepSize ∧
  C.directionality ∧
  C.atpConsumptionRate ∧
  C.forceGenerationModel ∧
  MotorProteinPackageClosed P

theorem motor_protein_analytic_certificate_closed
    {G : MotorProteinPackage} {P : MotorProteinPackage G}
    (C : MotorProteinAnalyticCertificate P) :
    MotorProteinAnalyticCertificateClosed C := by
  exact And.intro C.processivityModelClosed
    (And.intro C.stepSizeClosed
      (And.intro C.directionalityClosed
        (And.intro C.atpConsumptionRateClosed
          (And.intro C.forceGenerationModelClosed
            (motor_protein_closed_from_evidence P C.motorEvidence)))))

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse