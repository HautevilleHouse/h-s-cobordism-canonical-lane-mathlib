import HSCobordismCanonicalLaneLean.HSCobordismAdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

def bridgeClosed (A : HSCobordismAdmissibleClass) : Prop :=
  HSCobordismWitnessClosed A.object

theorem bridge_from_admissible_class (A : HSCobordismAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HSCobordismCanonicalLaneLean
end HautevilleHouse