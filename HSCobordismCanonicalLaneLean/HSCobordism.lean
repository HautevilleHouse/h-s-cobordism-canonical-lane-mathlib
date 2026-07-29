import canonicalLaneMathlib.AdmissibleClass

/-!
# H S Cobordism Package
-/

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HSManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : Nat

structure HSCobordism (M N : HSManifold) where
  cobordismCarrier : Type u
  cobordismTopology : TopologicalSpace cobordismCarrier
  cobordismSmooth : Prop
  leftBoundary : cobordismCarrier → Prop
  rightBoundary : cobordismCarrier → Prop
  leftIdentification : leftBoundary ≃ M.carrier
  rightIdentification : rightBoundary ≃ N.carrier

structure HSCobordismPackage (M N : HSManifold) where
  cobordism : HSCobordism M N
  hsType : cobordism.cobordismSmooth
  cobordismBordismClass : Prop
  surgeryCompatible : Prop

def HSCobordismClosed {M N : HSManifold} (C : HSCobordismPackage M N) : Prop :=
  C.hsType ∧ C.cobordismBordismClass ∧ C.surgeryCompatible

end HSCobordismCanonicalLaneLean
end HautevilleHouse