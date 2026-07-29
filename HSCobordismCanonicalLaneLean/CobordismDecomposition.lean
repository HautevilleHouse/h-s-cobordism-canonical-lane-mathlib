import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure HCobordismDecompositionPackage where
  manifoldW : Type u
  manifoldM : Type v
  manifoldN : Type w
  topologyW : TopologicalSpace manifoldW
  topologyM : TopologicalSpace manifoldM
  topologyN : TopologicalSpace manifoldN
  f : manifoldM → manifoldW
  g : manifoldN → manifoldW
  hCobordismProperty : Prop
  hCobordismApplications : Prop
  diffeomorphismUpTo : Prop

structure HCobordismDecompositionEvidence (P : HCobordismDecompositionPackage) where
  hCobordismPropertyClosed : P.hCobordismProperty
  hCobordismApplicationsClosed : P.hCobordismApplications
  diffeomorphismUpToClosed : P.diffeomorphismUpTo

def HCobordismDecompositionClosed (P : HCobordismDecompositionPackage) : Prop :=
  P.hCobordismProperty ∧ P.hCobordismApplications ∧ P.diffeomorphismUpTo

theorem h_cobordism_decomposition_closed_from_evidence (P : HCobordismDecompositionPackage)
    (E : HCobordismDecompositionEvidence P) : HCobordismDecompositionClosed P := by
  exact And.intro E.hCobordismPropertyClosed (And.intro E.hCobordismApplicationsClosed E.diffeomorphismUpToClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse