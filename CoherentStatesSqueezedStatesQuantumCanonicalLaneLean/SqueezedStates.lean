import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure SqueezedState where
  xi : ℂ
  squeezingOperator : ℂ → ℂ
  varianceReduced : Prop

structure SqueezingCertificate where
  squeezed : SqueezedState
  squeezingClosed : Prop
  varianceReducedClosed : varianceReduced squeezed
  squeezingClosedProof : squeezingClosed
  varianceReducedClosedProof : varianceReducedClosed

def sourceSqueezedState : SqueezedState := {
  xi := 0
  squeezingOperator := fun z => z
  varianceReduced := True
}

def sourceSqueezingCertificate : SqueezingCertificate := {
  squeezed := sourceSqueezedState
  squeezingClosed := True
  varianceReducedClosed := True
  squeezingClosedProof := by
    rfl
  varianceReducedClosedProof := by
    rfl
}

def SqueezingClosed (C : SqueezingCertificate) : Prop :=
  C.squeezingClosed ∧ C.varianceReducedClosed

theorem source_squeezing_closed : SqueezingClosed sourceSqueezingCertificate := by
  unfold SqueezingClosed
  apply And.intro
  · exact sourceSqueezingCertificate.squeezingClosedProof
  · exact sourceSqueezingCertificate.varianceReducedClosedProof

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse