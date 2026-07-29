import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HSCobordismCanonicalLaneLean

structure AlgebraicTopologyIngredients where
  fundamentalGroup : Type
  homotopyGroupsAbove : Type
  hurewiczTheorem : Prop
  whiteheadTheorem : Prop
  simpleHomotopyType : Prop
  hurewiczTheoremClosed : hurewiczTheorem
  whiteheadTheoremClosed : whiteheadTheorem
  simpleHomotopyTypeClosed : simpleHomotopyType

structure AlgebraicTopologyEvidence (A : AlgebraicTopologyIngredients) where
  hurewiczTheoremClosed : A.hurewiczTheoremClosed
  whiteheadTheoremClosed : A.whiteheadTheoremClosed
  simpleHomotopyTypeClosed : A.simpleHomotopyTypeClosed

def AlgebraicTopologyClosed (A : AlgebraicTopologyIngredients) : Prop :=
  A.hurewiczTheoremClosed ∧ A.whiteheadTheoremClosed ∧ A.simpleHomotopyTypeClosed

theorem algebraic_topology_closed_from_evidence (A : AlgebraicTopologyIngredients) (E : AlgebraicTopologyEvidence A) : AlgebraicTopologyClosed A := by
  exact And.intro E.hurewiczTheoremClosed (And.intro E.whiteheadTheoremClosed E.simpleHomotopyTypeClosed)

end HSCobordismCanonicalLaneLean
end HautevilleHouse