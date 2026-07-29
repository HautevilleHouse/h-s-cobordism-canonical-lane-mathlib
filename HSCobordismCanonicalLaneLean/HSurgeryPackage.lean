import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HSurgeryPackage where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryMetricControlled : Prop
  topologyChangeAccounted : Prop

structure HSurgeryEvidence (P : HSurgeryPackage) where
  surgeryTimesDiscreteClosed : P.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : P.surgeryRegionAdmissible
  postSurgeryMetricControlledClosed : P.postSurgeryMetricControlled
  topologyChangeAccountedClosed : P.topologyChangeAccounted

def HSurgeryClosed (P : HSurgeryPackage) : Prop :=
  P.surgeryTimesDiscrete ∧ P.surgeryRegionAdmissible ∧
  P.postSurgeryMetricControlled ∧ P.topologyChangeAccounted

theorem h_surgery_closed_from_evidence (P : HSurgeryPackage) (E : HSurgeryEvidence P) :
    HSurgeryClosed P := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryMetricControlledClosed E.topologyChangeAccountedClosed))

end HSCobordismCanonicalLaneLean
end HautevilleHouse