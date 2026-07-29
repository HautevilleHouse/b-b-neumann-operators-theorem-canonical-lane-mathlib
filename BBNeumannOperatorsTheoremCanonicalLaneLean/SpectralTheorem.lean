import canonicalLaneMathlib.AdmissibleClass
import BBNeumannOperatorsTheoremCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure SpectralTheoremPackage {P : OperatorAlgebraPackage} where
  normalElement : P.algebraType
  spectralMeasure : Set ℝ → P.algebraType
  functionalCalculus : (ℝ → ℂ) → P.algebraType
  spectralMapping : Prop
  functionalCalculusProperties : Prop
  spectralMappingClosed : spectralMapping
  functionalCalculusPropertiesClosed : functionalCalculusProperties

structure SpectralTheoremEvidence {P : OperatorAlgebraPackage}
    (S : SpectralTheoremPackage P) where
  spectralMappingClosed : S.spectralMapping
  functionalCalculusPropertiesClosed : S.functionalCalculusProperties

def SpectralTheoremClosed {P : OperatorAlgebraPackage}
    (S : SpectralTheoremPackage P) : Prop :=
  S.spectralMapping ∧ S.functionalCalculusProperties

theorem spectral_theorem_closed_from_evidence {P : OperatorAlgebraPackage}
    (S : SpectralTheoremPackage P) (E : SpectralTheoremEvidence S) :
    SpectralTheoremClosed S := by
  exact And.intro E.spectralMappingClosed E.functionalCalculusPropertiesClosed

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
