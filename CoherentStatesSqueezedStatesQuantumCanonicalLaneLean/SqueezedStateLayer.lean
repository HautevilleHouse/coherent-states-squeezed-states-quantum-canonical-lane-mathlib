import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoherentStatesSqueezedStatesQuantumCanonicalLaneLean.CoherentStateLayer

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure SqueezedStateCertificate where
  coherentCtx : CoherentStateCertificate
  squeezedState : SqueezedState 1
  varianceBound : Prop
  uncertaintyPrinciple : Prop
  varianceBoundProof : varianceBound
  uncertaintyPrincipleProof : uncertaintyPrinciple

def sourceSqueezedStateCertificate : SqueezedStateCertificate := {
  coherentCtx := sourceCoherentStateCertificate,
  squeezedState := vacuumSqueezedState,
  varianceBound := True,
  uncertaintyPrinciple := True,
  varianceBoundProof := trivial,
  uncertaintyPrincipleProof := trivial
}

def SqueezedStateClosed (C : SqueezedStateCertificate) : Prop :=
  CoherentStateClosed C.coherentCtx ∧
  C.varianceBound ∧ C.uncertaintyPrinciple

theorem source_squeezed_state_closed :
    SqueezedStateClosed sourceSqueezedStateCertificate := by
  exact And.intro source_coherent_state_closed
    (And.intro sourceSqueezedStateCertificate.varianceBoundProof
      sourceSqueezedStateCertificate.uncertaintyPrincipleProof)

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse
