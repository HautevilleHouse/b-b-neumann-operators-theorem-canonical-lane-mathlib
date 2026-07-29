import HautevilleHouse.BBNeumannOperatorsTheoremCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure DoubleCommutantTheoremPackage (M : VonNeumannAlgebra) where
  commutantIsAlgebra : Prop
  doubleCommutantClosure : Prop
  proofTerm : commutantIsAlgebra ∧ doubleCommutantClosure

def DoubleCommutantTheoremClosed (M : VonNeumannAlgebra) (P : DoubleCommutantTheoremPackage M) : Prop :=
  P.commutantIsAlgebra ∧ P.doubleCommutantClosure

theorem double_commutant_theorem_closed (M : VonNeumannAlgebra) (P : DoubleCommutantTheoremPackage M) :
    DoubleCommutantTheoremClosed M P := by
  exact And.intro P.proofTerm.1 P.proofTerm.2

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse