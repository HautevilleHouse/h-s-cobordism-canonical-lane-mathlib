import canonicalLaneMathlib.AdmissibleClass
import HSCobordismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HSCobordismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end HSCobordismCanonicalLaneLean
end HautevilleHouse