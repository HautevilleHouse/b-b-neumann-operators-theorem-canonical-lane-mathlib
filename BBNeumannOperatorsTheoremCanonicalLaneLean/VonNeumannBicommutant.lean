import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsTheoremCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure VonNeumannBicommutantPackage {P : OperatorAlgebraPackage} where
  subalgebra : Set P.algebraType
  commutant : Set P.algebraType
  bicommutant : Set P.algebraType
  bicommutantEqualsSubalgebra : Prop
  closureProperties : Prop
  bicommutantEqualsSubalgebraClosed : bicommutantEqualsSubalgebra
  closurePropertiesClosed : closureProperties

structure VonNeumannBicommutantEvidence {P : OperatorAlgebraPackage}
    (V : VonNeumannBicommutantPackage P) where
  bicommutantEqualsSubalgebraClosed : V.bicommutantEqualsSubalgebra
  closurePropertiesClosed : V.closureProperties

def VonNeumannBicommutantClosed {P : OperatorAlgebraPackage}
    (V : VonNeumannBicommutantPackage P) : Prop :=
  V.bicommutantEqualsSubalgebra ∧ V.closureProperties

theorem von_neumann_bicommutant_closed_from_evidence {P : OperatorAlgebraPackage}
    (V : VonNeumannBicommutantPackage P) (E : VonNeumannBicommutantEvidence V) :
    VonNeumannBicommutantClosed V := by
  exact And.intro E.bicommutantEqualsSubalgebraClosed E.closurePropertiesClosed

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
