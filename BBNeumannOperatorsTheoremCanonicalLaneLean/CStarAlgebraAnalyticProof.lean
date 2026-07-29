import BBNeumannOperatorsTheoremCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure BicommutantAnalyticCertificate (B : BicommutantPackage) where
  weakClosureClosedAnalytic : Prop
  commutantPropertyAnalytic : Prop
  factorPropertyAnalytic : Prop
  bicommutantEqualityAnalytic : Prop
  weakClosureClosedAnalyticClosed : weakClosureClosedAnalytic
  commutantPropertyAnalyticClosed : commutantPropertyAnalytic
  factorPropertyAnalyticClosed : factorPropertyAnalytic
  bicommutantEqualityAnalyticClosed : bicommutantEqualityAnalytic
  bicommutantEvidence : BicommutantEvidence B

def BicommutantAnalyticCertificateClosed (B : BicommutantPackage)
    (C : BicommutantAnalyticCertificate B) : Prop :=
  C.weakClosureClosedAnalytic ∧ C.commutantPropertyAnalytic ∧
  C.factorPropertyAnalytic ∧ C.bicommutantEqualityAnalytic ∧
  BicommutantClosed B

theorem bicommutant_analytic_certificate_closed (B : BicommutantPackage)
    (C : BicommutantAnalyticCertificate B) :
    BicommutantAnalyticCertificateClosed B C := by
  exact And.intro C.weakClosureClosedAnalyticClosed
    (And.intro C.commutantPropertyAnalyticClosed
      (And.intro C.factorPropertyAnalyticClosed
        (And.intro C.bicommutantEqualityAnalyticClosed
          (bicommutant_closed_from_evidence B C.bicommutantEvidence))))

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
