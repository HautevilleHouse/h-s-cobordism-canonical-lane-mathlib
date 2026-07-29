import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure WhiteheadGroupPackage where
  torsionGroup : Type
  torsionAbelian : Prop
  torsionFinitelyGenerated : Prop
  torsionAbelianClosed : torsionAbelian
  torsionFinitelyGeneratedClosed : torsionFinitelyGenerated

structure WhiteheadGroupEvidence (W : WhiteheadGroupPackage) where
  torsionAbelianClosed : W.torsionAbelianClosed
  torsionFinitelyGeneratedClosed : W.torsionFinitelyGeneratedClosed

def WhiteheadGroupClosed (W : WhiteheadGroupPackage) : Prop :=
  W.torsionAbelianClosed ∧ W.torsionFinitelyGeneratedClosed

theorem whitehead_group_closed_from_evidence (W : WhiteheadGroupPackage) (E : WhiteheadGroupEvidence W) : WhiteheadGroupClosed W := by
  exact And.intro E.torsionAbelianClosed E.torsionFinitelyGeneratedClosed

theorem whitehead_torsion_invariant (W : WhiteheadGroupPackage) : Prop :=
  W.torsionAbelianClosed → W.torsionFinitelyGeneratedClosed

end HSCobordismCanonicalLaneLean
end HautevilleHouse