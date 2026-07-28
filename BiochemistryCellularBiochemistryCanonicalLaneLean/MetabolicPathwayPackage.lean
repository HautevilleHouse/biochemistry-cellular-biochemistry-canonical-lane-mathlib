import BiochemistryCellularBiochemistryCanonicalLaneLean.EnzymeCatalysisPackage

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure MetabolicPathwayPackage {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} (E : EnzymeCatalysisPackage R) where
  fluxBalance : Prop
  stoichiometry : Prop
  regulation : Prop
  energyCoupling : Prop

structure MetabolicPathwayEvidence {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} (M : MetabolicPathwayPackage E) where
  fluxBalanceClosed : M.fluxBalance
  stoichiometryClosed : M.stoichiometry
  regulationClosed : M.regulation
  energyCouplingClosed : M.energyCoupling

def MetabolicPathwayClosed {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} (M : MetabolicPathwayPackage E) : Prop :=
  M.fluxBalance ∧ M.stoichiometry ∧ M.regulation ∧ M.energyCoupling

theorem metabolic_pathway_closed_from_evidence {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} (M : MetabolicPathwayPackage E) (Ev : MetabolicPathwayEvidence M) :
    MetabolicPathwayClosed M := by
  exact And.intro Ev.fluxBalanceClosed
    (And.intro Ev.stoichiometryClosed
      (And.intro Ev.regulationClosed Ev.energyCouplingClosed))

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse