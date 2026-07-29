import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HSCobordismStructure where
  W : Type
  M0 : Type
  M1 : Type
  hCobordism : Prop
  homotopyEquivalence : Prop
  sCobordism : Prop
  whiteheadTorsionVanishes : Prop
  hCobordismClosed : hCobordism
  homotopyEquivalenceClosed : homotopyEquivalence
  sCobordismClosed : sCobordism
  whiteheadTorsionVanishesClosed : whiteheadTorsionVanishes

structure HSCobordismStructureEvidence (H : HSCobordismStructure) where
  hCobordismClosed : H.hCobordismClosed
  homotopyEquivalenceClosed : H.homotopyEquivalenceClosed
  sCobordismClosed : H.sCobordismClosed
  whiteheadTorsionVanishesClosed : H.whiteheadTorsionVanishes

def HSCobordismStructureClosed (H : HSCobordismStructure) : Prop :=
  H.hCobordismClosed ∧ H.homotopyEquivalenceClosed ∧ H.sCobordismClosed ∧ H.whiteheadTorsionVanishesClosed

theorem hs_cobordism_structure_closed_from_evidence (H : HSCobordismStructure) (E : HSCobordismStructureEvidence H) : HSCobordismStructureClosed H := by
  exact And.intro E.hCobordismClosed (And.intro E.homotopyEquivalenceClosed (And.intro E.sCobordismClosed E.whiteheadTorsionVanishesClosed))

end HSCobordismCanonicalLaneLean
end HautevilleHouse