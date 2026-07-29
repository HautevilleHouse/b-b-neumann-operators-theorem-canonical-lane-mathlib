import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure NeumannOperatorPackage where
  neumannToDirichletMap : Type u
  dirichletToNeumannMap : Type v
  mapBounded : Prop
  mapCompact : Prop
  spectralProperties : Prop

structure NeumannOperatorEvidence (N : NeumannOperatorPackage) where
  mapBoundedClosed : N.mapBounded
  mapCompactClosed : N.mapCompact
  spectralPropertiesClosed : N.spectralProperties

def NeumannOperatorClosed (N : NeumannOperatorPackage) : Prop :=
  N.mapBounded ∧ N.mapCompact ∧ N.spectralProperties

theorem neumann_operator_closed_from_evidence
    (N : NeumannOperatorPackage) (E : NeumannOperatorEvidence N) :
    NeumannOperatorClosed N := by
  exact And.intro E.mapBoundedClosed
    (And.intro E.mapCompactClosed E.spectralPropertiesClosed)

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse