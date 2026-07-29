import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  manifoldConstrainedStatement := "coherent-squeezed admissible closure certificate internalized through displacement, squeezing, and ladder operators",
  certificateLane := "coherent_admissible",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end CoherentStatesSqueezedStatesQuantumCanonicalLaneLean
end HautevilleHouse