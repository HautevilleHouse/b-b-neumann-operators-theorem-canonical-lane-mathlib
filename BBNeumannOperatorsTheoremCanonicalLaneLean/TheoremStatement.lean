import BBNeumannOperatorsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "BBNeumannOperatorsTheorem"
    theoremName := "Biccommutant Theorem"
    theoremObject := "BBNeumannAdmittedObject"
    classicalBoundary := "Classical operator-theoretic closure assumed"
    manifoldConstrainedStatement := "The double commutant condition is satisfied."
    certificateLane := "operator_constrained"
    carriedRemainder := "Outside-constant dependency on bounded-operator algebra axioms."
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "BBNeumannOperatorsTheorem" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "operator_constrained" := by
  rfl

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse