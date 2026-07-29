import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BBNeumannOperatorsTheoremCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : OperatorAlgebra
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OperatorAlgebraClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse