import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure UncertaintyRelation where
  positionVariance : ℝ
  momentumVariance : ℝ
  product : ℝ := positionVariance * momentumVariance
  minProduct : ℝ := 1/4
  saturated : Prop

def coherentStateUncertainty : UncertaintyRelation := {
  positionVariance := 1/2
  momentumVariance := 1/2
  saturated := True
}

def squeezedStateUncertainty (r : ℝ) : UncertaintyRelation := {
  positionVariance := (Real.exp (2*r))/2
  momentumVariance := (Real.exp (-2*r))/2
  saturated := True
}

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse