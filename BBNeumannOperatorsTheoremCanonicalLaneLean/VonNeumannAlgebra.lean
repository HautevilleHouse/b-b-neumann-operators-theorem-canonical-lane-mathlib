import HautevilleHouse.BBNeumannOperatorsTheoremCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure VonNeumannAlgebra extends OperatorAlgebra where
  isDoubleCommutant : Prop
  commutant : VonNeumannAlgebra
  doubleCommutantEqSelf : commutant.commutant = this

def VonNeumannAlgebraClosed (M : VonNeumannAlgebra) : Prop :=
  M.isDoubleCommutant ∧ M.doubleCommutantEqSelf

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse