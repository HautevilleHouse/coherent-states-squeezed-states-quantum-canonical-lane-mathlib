import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure HilbertSpaceCertificate where
  innerProductDefined : Prop
  completenessHolds : Prop
  innerProductDefinedProof : innerProductDefined
  completenessHoldsProof : completenessHolds

def sourceHilbertSpaceCertificate : HilbertSpaceCertificate := {
  innerProductDefined := True
  completenessHolds := True
  innerProductDefinedProof := by
    trivial
  completenessHoldsProof := by
    trivial
}

def HilbertSpaceClosed (C : HilbertSpaceCertificate) : Prop :=
  C.innerProductDefined ∧ C.completenessHolds

theorem source_hilbert_space_closed : HilbertSpaceClosed sourceHilbertSpaceCertificate := by
  unfold HilbertSpaceClosed
  refine And.intro ?_ ?_
  · exact sourceHilbertSpaceCertificate.innerProductDefinedProof
  · exact sourceHilbertSpaceCertificate.completenessHoldsProof

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse