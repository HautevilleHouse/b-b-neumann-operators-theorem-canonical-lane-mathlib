import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure OperatorAlgebraPackage where
  operatorSpace : Type u
  involution : operatorSpace → operatorSpace
  norm : operatorSpace → ℝ
  multiplication : operatorSpace → operatorSpace → operatorSpace
  unit : operatorSpace
  cStarIdentity : ∀ x : operatorSpace, norm (multiplication x (involution x)) = (norm x)^2
  completeness : Prop
  completenessTerm : completeness

structure OperatorAlgebraEvidence (O : OperatorAlgebraPackage) where
  cStarIdentityClosed : O.cStarIdentity
  completenessClosed : O.completeness

def OperatorAlgebraClosed (O : OperatorAlgebraPackage) : Prop :=
  O.cStarIdentity ∧ O.completeness

theorem operator_algebra_closed_from_evidence
    (O : OperatorAlgebraPackage) (E : OperatorAlgebraEvidence O) :
    OperatorAlgebraClosed O := by
  exact And.intro E.cStarIdentityClosed E.completenessClosed

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse