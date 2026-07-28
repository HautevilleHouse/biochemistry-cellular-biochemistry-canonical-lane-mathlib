import BiochemistryCellularBiochemistryCanonicalLaneLean.ReactionKineticsPackage

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure EnzymeCatalysisPackage {R : ReactionKineticsPackage} (R : ReactionKineticsPackage) where
  michaelisMenten : Prop
  inhibition : Prop
  allosteric : Prop
  catalyticEfficiency : Prop

structure EnzymeCatalysisEvidence {R : ReactionKineticsPackage} (E : EnzymeCatalysisPackage R) where
  michaelisMentenClosed : E.michaelisMenten
  inhibitionClosed : E.inhibition
  allostericClosed : E.allosteric
  catalyticEfficiencyClosed : E.catalyticEfficiency

def EnzymeCatalysisClosed {R : ReactionKineticsPackage} (E : EnzymeCatalysisPackage R) : Prop :=
  E.michaelisMenten ∧ E.inhibition ∧ E.allosteric ∧ E.catalyticEfficiency

theorem enzyme_catalysis_closed_from_evidence {R : ReactionKineticsPackage} (E : EnzymeCatalysisPackage R) (Ev : EnzymeCatalysisEvidence E) :
    EnzymeCatalysisClosed E := by
  exact And.intro Ev.michaelisMentenClosed
    (And.intro Ev.inhibitionClosed
      (And.intro Ev.allostericClosed Ev.catalyticEfficiencyClosed))

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse