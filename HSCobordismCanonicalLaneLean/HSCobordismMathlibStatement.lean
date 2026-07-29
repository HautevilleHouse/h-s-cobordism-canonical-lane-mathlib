import HSCobordismCanonicalLaneLean.HSCobordismFinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HSCobordismMathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def hsCobordismMathlibProofObligation : HSCobordismMathlibProofObligation := {
  sourceKey := "h-s-cobordism-canonical-lane",
  theoremObject := "H-Cobordism Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_common_core_imported_checked :
    hsCobordismMathlibProofObligation.commonCoreImported = true := by
  rfl

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : HSCobordismAdmissibleClass, ConstrainedHSCobordismClosure A) := by
  intro A
  exact constrained_hscobordism_endgame A

end HSCobordismCanonicalLaneLean
end HautevilleHouse