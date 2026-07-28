import BiochemistryCellularBiochemistryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure AdmissibleClass where
  object : BiochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiochemistryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse