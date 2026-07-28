import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : ℝ
  enthalpy : ℝ
  entropy : ℝ
  equilibriumConstant : ℝ
  reactionQuotient : ℝ
  vanHoffEquation : Prop
  leChatelierPrinciple : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  vanHoffEquationClosed : T.vanHoffEquation
  leChatelierPrincipleClosed : T.leChatelierPrinciple

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.vanHoffEquation ∧ T.leChatelierPrinciple

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (Ev : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro Ev.vanHoffEquationClosed Ev.leChatelierPrincipleClosed

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse