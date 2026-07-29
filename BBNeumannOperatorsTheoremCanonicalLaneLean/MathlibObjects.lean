import BBNeumannOperatorsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BBNeumannOperatorsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeumannSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeumannAdmittedObject where
  space : NeumannSpace
  hilbertSpaceStructure : Prop
  vonNeumannAlgebra : Prop
  bicommutantClosure : Prop
  conclusion : bicommutantClosure

structure NeumannEndgameState where
  object : NeumannAdmittedObject

def NeumannWitnessClosed (O : NeumannAdmittedObject) : Prop :=
  O.bicommutantClosure

end BBNeumannOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
