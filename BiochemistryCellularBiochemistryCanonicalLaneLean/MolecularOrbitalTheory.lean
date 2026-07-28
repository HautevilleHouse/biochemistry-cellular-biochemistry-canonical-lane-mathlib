import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellularBiochemistryCanonicalLaneLean

structure MolecularOrbitalPackage where
  huckelApproximation : Prop
  orbitalHybridization : Prop
  homoLumoGap : Prop
  aromaticity : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  huckelApproximationClosed : M.huckelApproximation
  orbitalHybridizationClosed : M.orbitalHybridization
  homoLumoGapClosed : M.homoLumoGap
  aromaticityClosed : M.aromaticity

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.huckelApproximation ∧ M.orbitalHybridization ∧ M.homoLumoGap ∧ M.aromaticity

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.huckelApproximationClosed (And.intro E.orbitalHybridizationClosed (And.intro E.homoLumoGapClosed E.aromaticityClosed))

end BiochemistryCellularBiochemistryCanonicalLaneLean
end HautevilleHouse