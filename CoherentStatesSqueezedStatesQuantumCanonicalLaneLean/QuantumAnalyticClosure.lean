import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoherentStatesSqueezedStatesQuantumCanonicalLaneLean.SqueezedStateLayer

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

def coherentAdmittedObject : AdmittedTheoremObject := {
  object := {
    sourceKey := "coherent-squeezed-states",
    theoremObject := "Coherent States Squeezed States Quantum",
    claimBoundary := "canonical-constraint"
  },
  localWitness := "coherent state layer certificate",
  bridgeEvidence := "source-derived fields",
  sourceKeyChecked := rfl,
  theoremObjectChecked := rfl
}

def coherentAdmissibleClass : AdmissibleClass := {
  object := coherentAdmittedObject,
  endpointSatisfied := CoherentStateClosed sourceCoherentStateCertificate,
  remainderRecorded := True,
  gateWitness := Or.inl source_coherent_state_closed
}

def ConstrainedCoherentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coherent_endgame (A : AdmissibleClass) :
    ConstrainedCoherentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem coherent_admissibility_closed :
    ConstrainedCoherentClosure coherentAdmissibleClass := by
  exact constrained_coherent_endgame coherentAdmissibleClass

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse
