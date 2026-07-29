import HSCobordismCanonicalLaneLean.HCobordismBridge

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure WhitneyTrickPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Nat
  embeddedDisks : Prop
  intersectionRemoved : Prop
  hCobordismApplication : Prop

structure WhitneyTrickEvidence (W : WhitneyTrickPackage) where
  embeddedDisksClosed : W.embeddedDisks
  intersectionRemovedClosed : W.intersectionRemoved
  hCobordismApplicationClosed : W.hCobordismApplication

def WhitneyTrickClosed (W : WhitneyTrickPackage) : Prop :=
  W.embeddedDisks ∧ W.intersectionRemoved ∧ W.hCobordismApplication

theorem whitney_trick_closed_from_evidence (W : WhitneyTrickPackage) (E : WhitneyTrickEvidence W) : WhitneyTrickClosed W := by
  exact And.intro E.embeddedDisksClosed (And.intro E.intersectionRemovedClosed E.hCobordismApplicationClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse