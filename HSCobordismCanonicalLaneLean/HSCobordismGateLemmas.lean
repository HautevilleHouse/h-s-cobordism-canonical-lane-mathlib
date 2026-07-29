import HSCobordismCanonicalLaneLean.HSCobordismBridgeLemmas

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

def gateClosed (A : HSCobordismAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : HSCobordismAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end HSCobordismCanonicalLaneLean
end HautevilleHouse