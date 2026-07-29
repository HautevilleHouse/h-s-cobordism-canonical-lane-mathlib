import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HSCobordismSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HSCobordismAdmittedObject where
  space : HSCobordismSpace
  manifoldDimension : Nat
  sCobordismTheoremHolds : Prop
  whiteheadTorsionVanishes : Prop
  conclusion : sCobordismTheoremHolds ∧ whiteheadTorsionVanishes

def HSCobordismWitnessClosed (O : HSCobordismAdmittedObject) : Prop :=
  O.sCobordismTheoremHolds ∧ O.whiteheadTorsionVanishes

end HSCobordismCanonicalLaneLean
end HautevilleHouse