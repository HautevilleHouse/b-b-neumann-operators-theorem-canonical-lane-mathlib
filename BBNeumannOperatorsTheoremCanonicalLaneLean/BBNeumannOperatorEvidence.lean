import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsTheoremCanonicalLaneLean.OperatorAlgebraPackage

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure BBNeumannOperatorTheoremPackage {O : OperatorAlgebraPackage} where
  spectralTheoremApplied : Prop
  functionalCalculus : Prop
  bicommutantProperty : Prop

def BBNeumannOperatorTheoremClosed {O : OperatorAlgebraPackage}
    (P : BBNeumannOperatorTheoremPackage O) : Prop :=
  P.spectralTheoremApplied ∧ P.functionalCalculus ∧ P.bicommutantProperty

structure BBNeumannOperatorEvidence {O : OperatorAlgebraPackage}
    (P : BBNeumannOperatorTheoremPackage O) where
  spectralTheoremAppliedClosed : P.spectralTheoremApplied
  functionalCalculusClosed : P.functionalCalculus
  bicommutantPropertyClosed : P.bicommutantProperty

theorem bb_neumann_operator_closed_from_evidence
    {O : OperatorAlgebraPackage} (P : BBNeumannOperatorTheoremPackage O)
    (E : BBNeumannOperatorEvidence P) : BBNeumannOperatorTheoremClosed P := by
  exact And.intro E.spectralTheoremAppliedClosed
    (And.intro E.functionalCalculusClosed E.bicommutantPropertyClosed)

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse