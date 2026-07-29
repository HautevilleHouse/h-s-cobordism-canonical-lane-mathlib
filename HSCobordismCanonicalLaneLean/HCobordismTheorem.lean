import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HCobordismTheoremPackage where
  simplyConnectedCondition : Prop
  hCobordismImpliesDiffeomorphism : Prop
  handleDecomposition : Prop

structure HCobordismTheoremEvidence (H : HCobordismTheoremPackage) where
  simplyConnectedConditionClosed : H.simplyConnectedCondition
  hCobordismImpliesDiffeomorphismClosed : H.hCobordismImpliesDiffeomorphism
  handleDecompositionClosed : H.handleDecomposition

def HCobordismTheoremClosed (H : HCobordismTheoremPackage) : Prop :=
  H.simplyConnectedCondition ∧ H.hCobordismImpliesDiffeomorphism ∧ H.handleDecomposition

theorem h_cobordism_theorem_closed_from_evidence
    (H : HCobordismTheoremPackage) (E : HCobordismTheoremEvidence H) :
    HCobordismTheoremClosed H := by
  exact And.intro E.simplyConnectedConditionClosed
    (And.intro E.hCobordismImpliesDiffeomorphismClosed E.handleDecompositionClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse
