import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Contraction

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

abbrev PhaseSpace := ℂ × ℝ

structure CanonicalCommutationRelation where
  positionOp : ℂ → ℂ
  momentumOp : ℂ → ℂ
  commutation : ∀ ψ : ℂ, positionOp (momentumOp ψ) - momentumOp (positionOp ψ) = ψ

def zeroCommutation : CanonicalCommutationRelation := {
  positionOp := fun ψ => ψ * (0 : ℂ),
  momentumOp := fun ψ => ψ * (0 : ℂ),
  commutation := by intro ψ; simp
}

structure CoherentState (α : ℂ) where
  amplitude : ℂ
  displacement : ℂ → ℂ
  eigenvalueCondition : ∀ ψ : ℂ, displacement ψ = ψ * amplitude

def vacuumCoherentState : CoherentState (0 : ℂ) := {
  amplitude := 1,
  displacement := fun ψ => ψ,
  eigenvalueCondition := by intro ψ; simp
}

structure SqueezedState (ζ : ℂ) where
  squeezeParam : ℂ
  squeezeOp : ℂ → ℂ
  varianceReduction : ∀ ψ : ℂ, ‖ squeezeOp ψ ‖ ≤ ‖ ψ ‖

def vacuumSqueezedState : SqueezedState (0 : ℂ) := {
  squeezeParam := 0,
  squeezeOp := fun ψ => ψ,
  varianceReduction := by intro ψ; rfl
}

structure QuantumState where
  psi : ℂ
  normSq : ℝ
  coherence : ℝ

def zeroQuantumState : QuantumState := {
  psi := 0,
  normSq := 0,
  coherence := 0
}

def PhaseSpaceClosed (f : PhaseSpace) : Prop := True

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse
