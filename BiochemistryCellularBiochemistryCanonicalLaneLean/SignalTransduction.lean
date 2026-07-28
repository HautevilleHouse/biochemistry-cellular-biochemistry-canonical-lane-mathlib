import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure ReceptorLigandBinding where
  ligandConcentration : ℝ
  dissociationConstant : ℝ
  boundReceptorFraction : ℝ
  bindingEquation : boundReceptorFraction = ligandConcentration / (dissociationConstant + ligandConcentration)

structure SignalCascade where
  kinase : String
  phosphatase : String
  phosphorylationState : Prop
  cascadeAmplification : ℝ

def signalTransductionClosed (r : ReceptorLigandBinding) : Prop :=
  r.bindingEquation ∧ r.dissociationConstant > 0

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse