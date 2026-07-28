import BiochemistryCellularBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Type u
  activationEnergy : Prop
  equilibriumConstant : Prop
  rateConstant : Prop
  reactionOrder : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  equilibriumConstantClosed : R.equilibriumConstant
  rateConstantClosed : R.rateConstant
  reactionOrderClosed : R.reactionOrder

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.equilibriumConstant ∧ R.rateConstant ∧ R.reactionOrder

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.rateConstantClosed E.reactionOrderClosed)))

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse