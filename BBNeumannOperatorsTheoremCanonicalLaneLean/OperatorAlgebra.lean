import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure OperatorAlgebra where
  carrier : Type u
  algebraStructure : Algebra ℂ carrier
  norm : carrier → ℝ
  normedAlgebra : NormedAlgebra ℂ carrier
  complete : CompleteSpace carrier

def OperatorAlgebraClosed (A : OperatorAlgebra) : Prop := True

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse