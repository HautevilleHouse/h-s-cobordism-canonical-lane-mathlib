import canonicalLaneMathlib.AdmissibleClass
import HSCobordismCanonicalLaneLean.BridgeLemmas
import HSCobordismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

def ConstrainedHSCobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hs_cobordism_endgame (A : AdmissibleClass) : ConstrainedHSCobordismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HSCobordismCanonicalLaneLean
end HautevilleHouse