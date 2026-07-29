import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure DisplacementOperator where
  parameter : ℂ
  action : CoherentState → CoherentState
  unitary : Prop
  weylRelation : ∀ (α β : ℂ), action α ∘ action β = action (α + β)

def displacementBridge (A : AdmissibleClass) : Prop :=
  let D : DisplacementOperator := {
    parameter := 0
    action := fun c => coherentState (c.alpha + 0)
    unitary := True
    weylRelation := by
      intro α β
      ext c
      simp
  }
  in A.endpointSatisfied → D.unitary

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse