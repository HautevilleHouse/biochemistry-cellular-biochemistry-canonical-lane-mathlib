import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure MetabolicReaction where
  substrate : String
  product : String
  enzyme : String
  equilibriumConstant : ℝ
  rateForward : ℝ
  rateReverse : ℝ

structure MetabolicPathway where
  reactions : List MetabolicReaction
  netReaction : String
  atpYield : ℕ
  pathwayRegulation : Prop

def metabolicPathwayClosed (p : MetabolicPathway) : Prop :=
  p.netReaction ≠ "" ∧ p.atpYield ≥ 0

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse