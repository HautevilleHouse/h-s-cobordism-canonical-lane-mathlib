import canonicalLaneMathlib.AdmissibleClass
import HSCobordismCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure AdmissibleClass where
  object : HSCobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HSCobordismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HSCobordismCanonicalLaneLean
end HautevilleHouse