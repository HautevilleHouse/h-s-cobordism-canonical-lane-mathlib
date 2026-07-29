import HSCobordismCanonicalLaneLean.HCobordismBridge

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure SurgeryPackage {G : HCobordismObject} where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryCobordismControlled : Prop
  topologyChangeAccounted : Prop

structure SurgeryEvidence {G : HCobordismObject} (U : SurgeryPackage) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : U.surgeryRegionAdmissible
  postSurgeryCobordismControlledClosed : U.postSurgeryCobordismControlled
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def SurgeryClosed {G : HCobordismObject} (U : SurgeryPackage) : Prop :=
  U.surgeryTimesDiscrete ∧ U.surgeryRegionAdmissible ∧
  U.postSurgeryCobordismControlled ∧ U.topologyChangeAccounted

theorem surgery_closed_from_evidence {G : HCobordismObject} (U : SurgeryPackage) (E : SurgeryEvidence U) : SurgeryClosed U := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryCobordismControlledClosed E.topologyChangeAccountedClosed))

end HSCobordismCanonicalLaneLean
end HautevilleHouse