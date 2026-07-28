import canonicalLaneMathlib.AdmissibleClass
import BiochemistryCellularBiochemistryCanonicalLaneLean.BridgeLemmas
import BiochemistryCellularBiochemistryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

def ConstrainedBiochemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem biochemistry_endgame (A : AdmissibleClass) :
    ConstrainedBiochemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse