import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure CoherentState where
  alpha : ℂ
  label : String
  normalized : Prop

def coherentState (α : ℂ) : CoherentState := {
  alpha := α
  label := "|α⟩"
  normalized := True
}

structure CoherentStateAlgebra where
  annihilation : CoherentState → ℂ
  creation : CoherentState → ℂ
  number : CoherentState → ℕ
  displacement : ℂ → CoherentState → CoherentState
  displacementRule : ∀ (α β : ℂ) (s : CoherentState),
    displacement α (displacement β s) = displacement (α + β) s

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse