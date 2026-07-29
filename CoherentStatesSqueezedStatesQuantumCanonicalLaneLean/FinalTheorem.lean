import canonicalLaneMathlib.AdmissibleClass
import CoherentStatesSqueezedStatesQuantumCanonicalLaneLean.DisplacementOperatorBridge

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

def ConstrainedCoherentSqueezedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coherent_squeezed_endgame (A : AdmissibleClass) :
    ConstrainedCoherentSqueezedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse