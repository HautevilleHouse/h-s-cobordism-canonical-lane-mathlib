import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure SurgeryPackage where
  surgeryData : Type
  normalCobordism : Prop
  surgeryPreservesHomotopyType : Prop
  surgeryPreservesWhiteheadTorsion : Prop
  normalCobordismClosed : normalCobordism
  surgeryPreservesHomotopyTypeClosed : surgeryPreservesHomotopyType
  surgeryPreservesWhiteheadTorsionClosed : surgeryPreservesWhiteheadTorsion

structure SurgeryEvidence (S : SurgeryPackage) where
  normalCobordismClosed : S.normalCobordismClosed
  surgeryPreservesHomotopyTypeClosed : S.surgeryPreservesHomotopyTypeClosed
  surgeryPreservesWhiteheadTorsionClosed : S.surgeryPreservesWhiteheadTorsionClosed

def SurgeryClosed (S : SurgeryPackage) : Prop :=
  S.normalCobordismClosed ∧ S.surgeryPreservesHomotopyTypeClosed ∧ S.surgeryPreservesWhiteheadTorsionClosed

theorem surgery_closed_from_evidence (S : SurgeryPackage) (E : SurgeryEvidence S) : SurgeryClosed S := by
  exact And.intro E.normalCobordismClosed (And.intro E.surgeryPreservesHomotopyTypeClosed E.surgeryPreservesWhiteheadTorsionClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse