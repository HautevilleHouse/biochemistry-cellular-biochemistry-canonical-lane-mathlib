import canonicalLaneMathlib.AdmissibleClass
import BiochemistryCellularBiochemistryCanonicalLaneLean.BiochemistryObjects

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | BiochemistryAdmittedObject.mk _ _ _ h => h

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  match A.object with
  | BiochemistryAdmittedObject.mk _ _ _ h => exact h

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse