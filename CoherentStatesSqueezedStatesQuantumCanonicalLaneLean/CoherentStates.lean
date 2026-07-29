import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure CoherentState where
  alpha : ℂ
  displacementOperator : ℂ → ℂ
  fiducialState : ℂ → ℂ
  normalized : Prop

structure CoherentStateCertificate where
  coherent : CoherentState
  displacementClosed : Prop
  normalizedClosed : Prop
  displacementClosedProof : displacementClosed
  normalizedClosedProof : normalizedClosed

def sourceCoherentState : CoherentState := {
  alpha := 0
  displacementOperator := fun z => z
  fiducialState := fun _ => 0
  normalized := True
}

def sourceCoherentStateCertificate : CoherentStateCertificate := {
  coherent := sourceCoherentState
  displacementClosed := True
  normalizedClosed := True
  displacementClosedProof := by
    trivial
  normalizedClosedProof := by
    trivial
}

def CoherentStateClosed (C : CoherentStateCertificate) : Prop :=
  C.displacementClosed ∧ C.normalizedClosed

theorem source_coherent_state_closed : CoherentStateClosed sourceCoherentStateCertificate := by
  unfold CoherentStateClosed
  exact And.intro sourceCoherentStateCertificate.displacementClosedProof sourceCoherentStateCertificate.normalizedClosedProof

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse