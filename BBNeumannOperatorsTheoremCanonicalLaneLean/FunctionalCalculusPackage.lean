import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure FunctionalCalculusPackage where
  spectralMeasure : Type u
  functionalCalculus : Type v
  boundednessTheorem : Prop
  compositionRule : Prop
  spectralMapping : Prop

structure FunctionalCalculusEvidence (F : FunctionalCalculusPackage) where
  boundednessTheoremClosed : F.boundednessTheorem
  compositionRuleClosed : F.compositionRule
  spectralMappingClosed : F.spectralMapping

def FunctionalCalculusClosed (F : FunctionalCalculusPackage) : Prop :=
  F.boundednessTheorem ∧ F.compositionRule ∧ F.spectralMapping

theorem functional_calculus_closed_from_evidence
    (F : FunctionalCalculusPackage) (E : FunctionalCalculusEvidence F) :
    FunctionalCalculusClosed F := by
  exact And.intro E.boundednessTheoremClosed
    (And.intro E.compositionRuleClosed E.spectralMappingClosed)

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse