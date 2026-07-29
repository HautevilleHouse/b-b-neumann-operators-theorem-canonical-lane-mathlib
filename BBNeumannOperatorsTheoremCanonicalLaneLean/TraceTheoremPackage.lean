import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

structure TraceTheoremPackage where
  traceTheorem : Prop
  extensionTheorem : Prop
  interpolationTheorem : Prop
  regularityTheorem : Prop

structure TraceTheoremEvidence (T : TraceTheoremPackage) where
  traceTheoremClosed : T.traceTheorem
  extensionTheoremClosed : T.extensionTheorem
  interpolationTheoremClosed : T.interpolationTheorem
  regularityTheoremClosed : T.regularityTheorem

def TraceTheoremClosed (T : TraceTheoremPackage) : Prop :=
  T.traceTheorem ∧ T.extensionTheorem ∧
  T.interpolationTheorem ∧ T.regularityTheorem

theorem trace_theorem_closed_from_evidence
    (T : TraceTheoremPackage) (E : TraceTheoremEvidence T) :
    TraceTheoremClosed T := by
  exact And.intro E.traceTheoremClosed
    (And.intro E.extensionTheoremClosed
      (And.intro E.interpolationTheoremClosed E.regularityTheoremClosed))

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse