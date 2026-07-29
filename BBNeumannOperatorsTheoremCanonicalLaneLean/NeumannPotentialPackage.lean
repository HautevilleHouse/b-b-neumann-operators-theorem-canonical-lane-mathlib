import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure NeumannPotentialPackage where
  singleLayerPotential : Type u
  doubleLayerPotential : Type v
  potentialMapping : Type w
  jumpRelations : Prop
  potentialBounded : Prop

structure NeumannPotentialEvidence (N : NeumannPotentialPackage) where
  jumpRelationsClosed : N.jumpRelations
  potentialBoundedClosed : N.potentialBounded

def NeumannPotentialClosed (N : NeumannPotentialPackage) : Prop :=
  N.jumpRelations ∧ N.potentialBounded

theorem neumann_potential_closed_from_evidence
    (N : NeumannPotentialPackage) (E : NeumannPotentialEvidence N) :
    NeumannPotentialClosed N := by
  exact And.intro E.jumpRelationsClosed E.potentialBoundedClosed

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse