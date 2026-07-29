import HautevilleHouse.BBNeumannOperatorsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

def ConstrainedBBNeumannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bbneumann_endgame (A : AdmissibleClass) :
    ConstrainedBBNeumannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse