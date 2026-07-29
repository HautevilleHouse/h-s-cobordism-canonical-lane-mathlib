import canonicalLaneMathlib.AdmissibleClass
import HSCobordismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end HSCobordismCanonicalLaneLean
end HautevilleHouse