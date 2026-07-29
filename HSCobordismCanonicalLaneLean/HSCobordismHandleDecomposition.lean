import HSCobordismCanonicalLaneLean.HSCobordismAdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HandleDecompositionPackage {A : HSCobordismAdmissibleClass} where
  handleSlides : Type u
  cancelationPairs : Prop
  indexPreserving : Prop
  whitneyTrickApplied : Prop
  resultingTrivialCobordism : Prop

structure HandleDecompositionEvidence {A : HSCobordismAdmissibleClass}
    (H : HandleDecompositionPackage A) where
  handleSlidesClosed : True
  cancelationPairsClosed : H.cancelationPairs
  indexPreservingClosed : H.indexPreserving
  whitneyTrickAppliedClosed : H.whitneyTrickApplied
  resultingTrivialCobordismClosed : H.resultingTrivialCobordism

def HandleDecompositionClosed {A : HSCobordismAdmissibleClass}
    (H : HandleDecompositionPackage A) : Prop :=
  H.cancelationPairs ∧ H.indexPreserving ∧ H.whitneyTrickApplied ∧ H.resultingTrivialCobordism

theorem handle_decomposition_closed_from_evidence
    {A : HSCobordismAdmissibleClass} (H : HandleDecompositionPackage A)
    (E : HandleDecompositionEvidence H) : HandleDecompositionClosed H := by
  exact And.intro E.cancelationPairsClosed
    (And.intro E.indexPreservingClosed
      (And.intro E.whitneyTrickAppliedClosed E.resultingTrivialCobordismClosed))

end HSCobordismCanonicalLaneLean
end HautevilleHouse