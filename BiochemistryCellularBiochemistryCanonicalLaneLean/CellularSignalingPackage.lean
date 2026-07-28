import BiochemistryCellularBiochemistryCanonicalLaneLean.MetabolicPathwayPackage

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure CellularSignalingPackage {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} {M : MetabolicPathwayPackage E} (M : MetabolicPathwayPackage E) where
  signalTransduction : Prop
  receptorBinding : Prop
  secondMessenger : Prop
  feedbackLoop : Prop

structure CellularSignalingEvidence {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} {M : MetabolicPathwayPackage E} (S : CellularSignalingPackage M) where
  signalTransductionClosed : S.signalTransduction
  receptorBindingClosed : S.receptorBinding
  secondMessengerClosed : S.secondMessenger
  feedbackLoopClosed : S.feedbackLoop

def CellularSignalingClosed {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} {M : MetabolicPathwayPackage E} (S : CellularSignalingPackage M) : Prop :=
  S.signalTransduction ∧ S.receptorBinding ∧ S.secondMessenger ∧ S.feedbackLoop

theorem cellular_signaling_closed_from_evidence {R : ReactionKineticsPackage} {E : EnzymeCatalysisPackage R} {M : MetabolicPathwayPackage E} (S : CellularSignalingPackage M) (Ev : CellularSignalingEvidence S) :
    CellularSignalingClosed S := by
  exact And.intro Ev.signalTransductionClosed
    (And.intro Ev.receptorBindingClosed
      (And.intro Ev.secondMessengerClosed Ev.feedbackLoopClosed))

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse