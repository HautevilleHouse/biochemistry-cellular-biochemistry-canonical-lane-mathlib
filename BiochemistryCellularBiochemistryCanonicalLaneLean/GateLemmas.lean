import canonicalLaneMathlib.AdmissibleClass
import BiochemistryCellularBiochemistryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse