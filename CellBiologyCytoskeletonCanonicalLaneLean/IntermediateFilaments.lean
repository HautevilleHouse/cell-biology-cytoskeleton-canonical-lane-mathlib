import CellBiologyCytoskeletonCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytoskeletonCanonicalLaneLean

structure IFSubunit where
  headDomain : String
  rodDomain : String
  tailDomain : String

define IFFilament where
  tetramerUnit : Prop
  lateralAssociation : Float
  networkFormation : Prop

structure IntermediateFilamentPackage (A : AdmissibleClass) where
  subunit : IFSubunit
  filament : IFFilament
  assemblyCompetence : Prop
  disassemblyRegulation : Prop
  crosslinking : Prop
  evidence : A.gateWitness

def IntermediateFilamentClosed (P : IntermediateFilamentPackage A) : Prop :=
  P.assemblyCompetence ∧ P.disassemblyRegulation ∧ P.crosslinking

theorem intermediate_filament_closed_from_evidence (P : IntermediateFilamentPackage A) :
    IntermediateFilamentClosed P := by
  exact And.intro P.assemblyCompetence (And.intro P.disassemblyRegulation P.crosslinking)

end CellBiologyCytoskeletonCanonicalLaneLean
end HautevilleHouse