import HSCobordismCanonicalLaneLean.HSCobordismAdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure SMaleTheoremPackage {A : HSCobordismAdmissibleClass} where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  simplyConnected : Prop
  dimensionAtLeastFive : Nat ≥ 5
  hCobordismTrivial : Prop
  diffeomorphicToSphere : Prop

structure SMaleTheoremEvidence {A : HSCobordismAdmissibleClass} (S : SMaleTheoremPackage A) where
  simplyConnectedClosed : S.simplyConnected
  dimensionAtLeastFiveClosed : True
  hCobordismTrivialClosed : S.hCobordismTrivial
  diffeomorphicToSphereClosed : S.diffeomorphicToSphere

def SMaleTheoremClosed {A : HSCobordismAdmissibleClass} (S : SMaleTheoremPackage A) : Prop :=
  S.simplyConnected ∧ S.hCobordismTrivial ∧ S.diffeomorphicToSphere

theorem s_male_theorem_closed_from_evidence
    {A : HSCobordismAdmissibleClass} (S : SMaleTheoremPackage A)
    (E : SMaleTheoremEvidence S) : SMaleTheoremClosed S := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.hCobordismTrivialClosed E.diffeomorphicToSphereClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse