import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure MichaelisMentenParameters where
  maxVelocity : ℝ
  michaelisConstant : ℝ
  substrateConcentration : ℝ
  reactionRate : ℝ
  michaelisMentenEquation : reactionRate = maxVelocity * substrateConcentration / (michaelisConstant + substrateConcentration)

structure InhibitionModel where
  inhibitorType : String
  inhibitionConstant : ℝ
  apparentKm : ℝ
  apparentVmax : ℝ
  inhibitionRate : ℝ

def enzymeKineticsClosed (p : MichaelisMentenParameters) : Prop :=
  p.michaelisMentenEquation ∧ p.maxVelocity > 0 ∧ p.michaelisConstant > 0

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse