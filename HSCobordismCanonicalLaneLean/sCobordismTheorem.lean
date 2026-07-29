import HSCobordismCanonicalLaneLean.WhitneyTrick
import HSCobordismCanonicalLaneLean.HandleDecomposition

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure SCobordismTheoremInstance where
  dimension : ℕ
  sourceSimplyConnected : Prop
  sourceTargetHomologyEq : Prop
  hCobordismObject : HCobordismObject
  theoremProved : Prop

def SCobordismClosed (S : SCobordismTheoremInstance) : Prop :=
  S.theoremProved

theorem s_cobordism_from_evidence (S : SCobordismTheoremInstance) (h : S.theoremProved) : SCobordismClosed S := h

end HSCobordismCanonicalLaneLean
end HautevilleHouse