import HSCobordismCanonicalLaneLean.HSCobordismGateLemmas

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

def ConstrainedHSCobordismClosure (A : HSCobordismAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hscobordism_endgame (A : HSCobordismAdmissibleClass) :
    ConstrainedHSCobordismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HSCobordismCanonicalLaneLean
end HautevilleHouse