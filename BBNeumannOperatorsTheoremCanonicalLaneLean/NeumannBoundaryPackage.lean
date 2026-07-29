import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure NeumannBoundaryPackage where
  domain : Type u
  boundary : Type v
  traceOperator : Type w
  poissonOperator : Type x
  domainSmooth : Prop
  boundaryCompact : Prop
  traceContinuous : Prop
  poissonContinuous : Prop

structure NeumannBoundaryEvidence (N : NeumannBoundaryPackage) where
  domainSmoothClosed : N.domainSmooth
  boundaryCompactClosed : N.boundaryCompact
  traceContinuousClosed : N.traceContinuous
  poissonContinuousClosed : N.poissonContinuous

def NeumannBoundaryClosed (N : NeumannBoundaryPackage) : Prop :=
  N.domainSmooth ∧ N.boundaryCompact ∧
  N.traceContinuous ∧ N.poissonContinuous

theorem neumann_boundary_closed_from_evidence
    (N : NeumannBoundaryPackage) (E : NeumannBoundaryEvidence N) :
    NeumannBoundaryClosed N := by
  exact And.intro E.domainSmoothClosed
    (And.intro E.boundaryCompactClosed
      (And.intro E.traceContinuousClosed E.poissonContinuousClosed))

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse