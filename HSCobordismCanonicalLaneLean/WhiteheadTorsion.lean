import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure WhiteheadTorsionPackage where
  groupRing : Type u
  torsionInvariant : Type v
  vanishingCondition : Prop
  sCobordismImpliesVanishing : Prop

structure WhiteheadTorsionEvidence (W : WhiteheadTorsionPackage) where
  vanishingConditionClosed : W.vanishingCondition
  sCobordismImpliesVanishingClosed : W.sCobordismImpliesVanishing

def WhiteheadTorsionClosed (W : WhiteheadTorsionPackage) : Prop :=
  W.vanishingCondition ∧ W.sCobordismImpliesVanishing

theorem whitehead_torsion_closed_from_evidence
    (W : WhiteheadTorsionPackage) (E : WhiteheadTorsionEvidence W) :
    WhiteheadTorsionClosed W := by
  exact And.intro E.vanishingConditionClosed E.sCobordismImpliesVanishingClosed

end HSCobordismCanonicalLaneLean
end HautevilleHouse
