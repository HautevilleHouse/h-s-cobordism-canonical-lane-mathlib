import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HSCobordismSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : Nat
  dimensionEqualsFour : dimension = 4

structure HSCobordismAdmittedObject where
  space : HSCobordismSpace
  closedManifold : Prop
  simplyConnected : Prop
  standardSphereModel : Type
  standardSphereTopology : TopologicalSpace standardSphereModel
  homeomorphicToStandardSphere : Prop
  conclusion : homeomorphicToStandardSphere

structure HSCobordismAdmissibleClass where
  object : HSCobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def HSCobordismWitnessClosed (O : HSCobordismAdmittedObject) : Prop :=
  O.homeomorphicToStandardSphere

def admittedClosure (A : HSCobordismAdmissibleClass) : Prop :=
  HSCobordismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HSCobordismCanonicalLaneLean
end HautevilleHouse