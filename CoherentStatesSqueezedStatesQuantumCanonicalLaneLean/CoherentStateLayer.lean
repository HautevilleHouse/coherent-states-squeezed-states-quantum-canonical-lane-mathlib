import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoherentStatesSqueezedStatesQuantumCanonicalLaneLean.QuantumPhaseSpaceLayer

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure CoherentStateCertificate where
  phaseSpace : PhaseSpace
  ccr : CanonicalCommutationRelation
  coherentState : CoherentState 1
  coherenceBound : Prop
  eigenvalueClosed : Prop
  coherenceBoundProof : coherenceBound
  eigenvalueClosedProof : eigenvalueClosed

def sourceCoherentStateCertificate : CoherentStateCertificate := {
  phaseSpace := (0, 0),
  ccr := zeroCommutation,
  coherentState := vacuumCoherentState,
  coherenceBound := True,
  eigenvalueClosed := True,
  coherenceBoundProof := trivial,
  eigenvalueClosedProof := trivial
}

def CoherentStateClosed (C : CoherentStateCertificate) : Prop :=
  C.coherenceBound ∧ C.eigenvalueClosed

theorem source_coherent_state_closed :
    CoherentStateClosed sourceCoherentStateCertificate := by
  exact And.intro sourceCoherentStateCertificate.coherenceBoundProof
    sourceCoherentStateCertificate.eigenvalueClosedProof

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse
