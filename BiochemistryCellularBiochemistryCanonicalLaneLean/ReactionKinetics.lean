import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : String → String → Prop
  michaelisMenten : Prop
  steadyStateApproximation : Prop
  kineticParameters : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : ∀ (substrate product : String), R.rateLaw substrate product
  michaelisMentenClosed : R.michaelisMenten
  steadyStateApproximationClosed : R.steadyStateApproximation
  kineticParametersClosed : R.kineticParameters

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  (∀ (substrate product : String), R.rateLaw substrate product) ∧
  R.michaelisMenten ∧ R.steadyStateApproximation ∧ R.kineticParameters

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.michaelisMentenClosed (And.intro E.steadyStateApproximationClosed E.kineticParametersClosed))

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse