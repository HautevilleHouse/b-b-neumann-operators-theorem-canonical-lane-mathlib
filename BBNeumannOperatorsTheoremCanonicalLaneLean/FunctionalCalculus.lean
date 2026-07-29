import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsTheoremCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure FunctionalCalculusPackage {P : OperatorAlgebraPackage} where
  continuousFunctions : Set (ℝ → ℂ)
  calculusMap : (ℝ → ℂ) → P.algebraType
  homomorphismProperty : Prop
  spectralPreservation : Prop
  homomorphismPropertyClosed : homomorphismProperty
  spectralPreservationClosed : spectralPreservation

structure FunctionalCalculusEvidence {P : OperatorAlgebraPackage}
    (F : FunctionalCalculusPackage P) where
  homomorphismPropertyClosed : F.homomorphismProperty
  spectralPreservationClosed : F.spectralPreservation

def FunctionalCalculusClosed {P : OperatorAlgebraPackage}
    (F : FunctionalCalculusPackage P) : Prop :=
  F.homomorphismProperty ∧ F.spectralPreservation

theorem functional_calculus_closed_from_evidence {P : OperatorAlgebraPackage}
    (F : FunctionalCalculusPackage P) (E : FunctionalCalculusEvidence F) :
    FunctionalCalculusClosed F := by
  exact And.intro E.homomorphismPropertyClosed E.spectralPreservationClosed

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
