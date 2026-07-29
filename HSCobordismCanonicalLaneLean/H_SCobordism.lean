import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure H_SCobordismObject where
  M : Type u
  W : Type u
  topM : TopologicalSpace M
  topW : TopologicalSpace W
  manifoldM : Prop
  manifoldW : Prop
  hCobordism : Prop
  sCobordism : Prop
  conclusion : hCobordism ∧ sCobordism

structure AdmissibleClass where
  object : H_SCobordismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  H_SCobordismClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HSCobordismCanonicalLaneLean
end HautevilleHouse
