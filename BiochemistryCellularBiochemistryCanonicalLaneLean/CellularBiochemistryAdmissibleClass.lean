import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure CellularBiochemistryAdmittedObject where
  cellularProcess : String
  kineticEvidence : Prop
  thermodynamicFeasibility : Prop
  pathwayIntegrity : Prop
  conclusion : kineticEvidence ∧ thermodynamicFeasibility ∧ pathwayIntegrity

structure AdmissibleClass where
  object : CellularBiochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.kineticEvidence ∧ A.object.thermodynamicFeasibility ∧ A.object.pathwayIntegrity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse