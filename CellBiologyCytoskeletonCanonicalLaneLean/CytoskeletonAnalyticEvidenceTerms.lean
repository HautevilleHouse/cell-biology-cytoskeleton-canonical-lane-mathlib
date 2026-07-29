import CellBiologyCytoskeletonCanonicalLaneLean.CytoskeletonAnalyticProof

/-!
# Cytoskeleton Analytic Evidence Terms

This module exposes the proof terms carried by each analytic certificate. The
route is term-level: every analytic field has a named Lean term, and those terms
project into the cytoskeleton route closure.
-/

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure ActinDynamicsAnalyticEvidenceTerms {G : ActinFilamentPackage}
    (C : ActinDynamicsAnalyticCertificate G) where
  nucleationRate : C.nucleationRate
  elongationRate : C.elongationRate
  severingRate : C.severingRate
  cappingProteinRegulation : C.cappingProteinRegulation
  atpHydrolysisCoupling : C.atpHydrolysisCoupling
  actinClosed : ActinFilamentPackageClosed G

def ActinDynamicsAnalyticCertificate.evidenceTerms {G : ActinFilamentPackage}
    (C : ActinDynamicsAnalyticCertificate G) : ActinDynamicsAnalyticEvidenceTerms C :=
  {
    nucleationRate := C.nucleationRateClosed
    elongationRate := C.elongationRateClosed
    severingRate := C.severingRateClosed
    cappingProteinRegulation := C.cappingProteinRegulationClosed
    atpHydrolysisCoupling := C.atpHydrolysisCouplingClosed
    actinClosed := actin_filament_closed_from_evidence G C.actinEvidence
  }

structure MicrotubuleDynamicsEvidenceTerms {G : MicrotubulePackage}
    (C : MicrotubuleDynamicsAnalyticCertificate G) where
  dynamicInstabilityModel : C.dynamicInstabilityModel
  gtpCapModel : C.gtpCapModel
  rescueFrequency : C.rescueFrequency
  catastropheFrequency : C.catastropheFrequency
  microtubuleClosed : MicrotubulePackageClosed G

def MicrotubuleDynamicsAnalyticCertificate.evidenceTerms {G : MicrotubulePackage}
    (C : MicrotubuleDynamicsAnalyticCertificate G) : MicrotubuleDynamicsEvidenceTerms C :=
  {
    dynamicInstabilityModel := C.dynamicInstabilityModelClosed
    gtpCapModel := C.gtpCapModelClosed
    rescueFrequency := C.rescueFrequencyClosed
    catastropheFrequency := C.catastropheFrequencyClosed
    microtubuleClosed := microtubule_closed_from_evidence G C.microtubuleEvidence
  }

structure MotorProteinEvidenceTerms {G : MotorProteinPackage}
    (C : MotorProteinAnalyticCertificate G) where
  processivityModel : C.processivityModel
  stepSize : C.stepSize
  directionality : C.directionality
  atpConsumptionRate : C.atpConsumptionRate
  forceGenerationModel : C.forceGenerationModel
  motorClosed : MotorProteinPackageClosed G

def MotorProteinAnalyticCertificate.evidenceTerms {G : MotorProteinPackage}
    (C : MotorProteinAnalyticCertificate G) : MotorProteinEvidenceTerms C :=
  {
    processivityModel := C.processivityModelClosed
    stepSize := C.stepSizeClosed
    directionality := C.directionalityClosed
    atpConsumptionRate := C.atpConsumptionRateClosed
    forceGenerationModel := C.forceGenerationModelClosed
    motorClosed := motor_protein_closed_from_evidence G C.motorEvidence
  }

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse