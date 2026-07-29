import HSCobordismCanonicalLaneLean.HCobordismBridge

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HandleDecompositionPackage where
  cobordism : Type u
  topology : TopologicalSpace cobordism
  handleIndices : List ℕ
  eachHandleAttached : Prop
  decompositionCompatible : Prop
  simplifiesCobordism : Prop

structure HandleDecompositionEvidence (D : HandleDecompositionPackage) where
  eachHandleAttachedClosed : D.eachHandleAttached
  decompositionCompatibleClosed : D.decompositionCompatible
  simplifiesCobordismClosed : D.simplifiesCobordism

def HandleDecompositionClosed (D : HandleDecompositionPackage) : Prop :=
  D.eachHandleAttached ∧ D.decompositionCompatible ∧ D.simplifiesCobordism

theorem handle_decomposition_closed_from_evidence (D : HandleDecompositionPackage) (E : HandleDecompositionEvidence D) : HandleDecompositionClosed D := by
  exact And.intro E.eachHandleAttachedClosed (And.intro E.decompositionCompatibleClosed E.simplifiesCobordismClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse