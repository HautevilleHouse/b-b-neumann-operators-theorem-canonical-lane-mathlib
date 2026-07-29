import HautevilleHouse.BBNeumannOperatorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OperatorAlgebraClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.complete

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse