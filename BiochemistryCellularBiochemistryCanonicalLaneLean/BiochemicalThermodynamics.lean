import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure GibbsFreeEnergyChange where
  standardGibbs : ℝ
  gasConstant : ℝ
  temperature : ℝ
  reactionQuotient : ℝ
  actualGibbs : ℝ
  gibbsEquation : actualGibbs = standardGibbs + gasConstant * temperature * Real.log reactionQuotient

structure ChemicalEquilibrium where
  equilibriumConstant : ℝ
  forwardRateConstant : ℝ
  reverseRateConstant : ℝ
  equilibriumRelation : equilibriumConstant = forwardRateConstant / reverseRateConstant

def thermodynamicFeasibilityClosed (g : GibbsFreeEnergyChange) : Prop :=
  g.gibbsEquation ∧ g.actualGibbs < 0

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse