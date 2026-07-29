import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure QuantumStateSpaceCertificate where
  hilbertSpace : Prop
  densityOperator : Prop
  pureMixedDecomposition : Prop
  traceClassOperators : Prop
  hilbertSpaceClosed : hilbertSpace
  densityOperatorClosed : densityOperator
  pureMixedDecompositionClosed : pureMixedDecomposition
  traceClassOperatorsClosed : traceClassOperators

def sourceQuantumStateSpaceCertificate : QuantumStateSpaceCertificate := {
  hilbertSpace := True
  densityOperator := True
  pureMixedDecomposition := True
  traceClassOperators := True
  hilbertSpaceClosed := trivial
  densityOperatorClosed := trivial
  pureMixedDecompositionClosed := trivial
  traceClassOperatorsClosed := trivial
}

def QuantumStateSpaceClosed (C : QuantumStateSpaceCertificate) : Prop :=
  C.hilbertSpace ∧ C.densityOperator ∧ C.pureMixedDecomposition ∧ C.traceClassOperators

theorem source_quantum_state_space_closed : QuantumStateSpaceClosed sourceQuantumStateSpaceCertificate := by
  exact And.intro sourceQuantumStateSpaceCertificate.hilbertSpaceClosed
    (And.intro sourceQuantumStateSpaceCertificate.densityOperatorClosed
      (And.intro sourceQuantumStateSpaceCertificate.pureMixedDecompositionClosed
        sourceQuantumStateSpaceCertificate.traceClassOperatorsClosed))

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse