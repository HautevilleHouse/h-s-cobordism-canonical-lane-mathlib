import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HCobordismObject where
  source : Type u
  target : Type u
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target
  cobordism : Type v
  cobordismTopology : TopologicalSpace cobordism
  boundaryComponents : List (cobordism → Prop)
  fundamentalGroupIsomorphism : Prop
  hCobordismProperty : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : HCobordismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HCobordismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HCobordismWitnessClosed (O : HCobordismObject) : Prop :=
  O.conclusion

end HSCobordismCanonicalLaneLean
end HautevilleHouse