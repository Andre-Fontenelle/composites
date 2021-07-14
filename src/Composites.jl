module Composites

# ================================= Imports ================================== #


# ================================= Exports ================================== #
export Composite # Data type
export CarbonUnidirectional, CarbonMesh, AramidUnidirectional, AramidMesh # Materials
export CU, CM, AU, AM

# ============================= Struct Definition ============================ #
struct Composite
    # Phisycal properties
    t  :: Float64 # (m) Composite layer thickness
    ρ  :: Float64 # (kg/m^3) Density

    # Stiffness properties
    E1  :: Float64 # (Pa) Young module in direction 1
    E2  :: Float64 # (Pa) Young module in direction 2
    E3  :: Float64 # (Pa) Young module in direction 3
    G12 :: Float64 # (Pa) Shear module in plane 12
    G23 :: Float64 # (Pa) Shear module in plane 23
    G13 :: Float64 # (Pa) Shear module in plane 13

    # Poisson ratios
    ν12 :: Float64 # Poisson between directions 12
    ν23 :: Float64 # Poisson between directions 23
    ν13 :: Float64 # Poisson between directions 13

    # Tensile strength
    σT1 :: Float64 # (Pa) Tension strength in direction 1
    σT2 :: Float64 # (Pa) Tension strength in direction 2
    σT3 :: Float64 # (Pa) Tension strength in direction 3
    σC1 :: Float64 # (Pa) Compression in direction 1
    σC2 :: Float64 # (Pa) Compression in direction 2
    σC3 :: Float64 # (Pa) Compression in direction 3

    # Shear strength
    τ12 :: Float64 # (Pa) Shear strength in plane 12
    τ23 :: Float64 # (Pa) Shear strength in plane 23
    τ13 :: Float64 # (Pa) Shear strength in plane 13
end

# ================================= Defaults ================================= #
function CarbonUnidirectional()
    # Phisycal properties
    t = 0.2e-3 # (m) Composite layer thickness
    ρ = 1600 # (kg/m^3) Density
    phisycal = (t, ρ)

    # Stiffness properties
    E1 = 147e9 # (Pa) Young module in direction 1
    E2 = 10.3e9 # (Pa) Young module in direction 2
    E3 = 10.3e9 # (Pa) Young module in direction 3
    G12 = 7e9 # (Pa) Shear module in plane 12
    G23 = 3.7e9 # (Pa) Shear module in plane 23
    G13 = 7e9 # (Pa) Shear module in plane 13
    stiffness = (E1, E2, E3, G12, G23, G13)

    # Poisson ratios
    ν12 = 0.27 # Poisson between directions 12
    ν23 = 0.54 # Poisson between directions 23
    ν13 = 0.27 # Poisson between directions 13
    poisson = (ν12, ν23, ν13)

    # Tensile strength
    σT1 = 2280e6 # (Pa) Tension strength in direction 1
    σT2 = 57e6 # (Pa) Tension strength in direction 2
    σT3 = 57e6 # (Pa) Tension strength in direction 3
    σC1 = 1725e6 # (Pa) Compression in direction 1
    σC2 = 228e6 # (Pa) Compression in direction 2
    σC3 = 228e6 # (Pa) Compression in direction 3
    tensile = (σT1, σT2, σT3, σC1, σC2, σC3)

    # Shear strength
    τ12 = 76e6 # (Pa) Shear strength in plane 12
    τ23 = 65e6 # (Pa) Shear strength in plane 23
    τ13 = 75e6 # (Pa) Shear strength in plane 13
    shear = (τ12, τ23, τ13)

    return Composite(phisycal..., stiffness..., poisson..., tensile..., shear...)
end

function CarbonMesh()
    # Phisycal properties
    t = 0.2e-3 # (m) Composite layer thickness
    ρ = 1600 # (kg/m^3) Density
    phisycal = (t, ρ)

    # Stiffness properties
    E1 = 77e9 # (Pa) Young module in direction 1
    E2 = 75e9 # (Pa) Young module in direction 2
    E3 = 13.8e9 # (Pa) Young module in direction 3
    G12 = 6.5e9 # (Pa) Shear module in plane 12
    G23 = 4.1e9 # (Pa) Shear module in plane 23
    G13 = 5.1e9 # (Pa) Shear module in plane 13
    stiffness = (E1, E2, E3, G12, G23, G13)

    # Poisson ratios
    ν12 = 0.06 # Poisson between directions 12
    ν23 = 0.37 # Poisson between directions 23
    ν13 = 0.50 # Poisson between directions 13
    poisson = (ν12, ν23, ν13)

    # Tensile strength
    σT1 = 963e6 # (Pa) Tension strength in direction 1
    σT2 = 856e6 # (Pa) Tension strength in direction 2
    σT3 = 60e6 # (Pa) Tension strength in direction 3
    σC1 = 900e6 # (Pa) Compression in direction 1
    σC2 = 900e6 # (Pa) Compression in direction 2
    σC3 = 813e6 # (Pa) Compression in direction 3
    tensile = (σT1, σT2, σT3, σC1, σC2, σC3)

    # Shear strength
    τ12 = 71e6 # (Pa) Shear strength in plane 12
    τ23 = 65e6 # (Pa) Shear strength in plane 23
    τ13 = 75e6 # (Pa) Shear strength in plane 13
    shear = (τ12, τ23, τ13)

    return Composite(phisycal..., stiffness..., poisson..., tensile..., shear...)
end

function AramidUnidirectional()
    # Phisycal properties
    t = 0.2e-3 # (m) Composite layer thickness
    ρ = 1380 # (kg/m^3) Density
    phisycal = (t, ρ)

    # Stiffness properties
    E1 = 80e9 # (Pa) Young module in direction 1
    E2 = 5.5e9 # (Pa) Young module in direction 2
    E3 = 5.5e9 # (Pa) Young module in direction 3
    G12 = 2.2e9 # (Pa) Shear module in plane 12
    G23 = 1.8e9 # (Pa) Shear module in plane 23
    G13 = 2.2e9 # (Pa) Shear module in plane 13
    stiffness = (E1, E2, E3, G12, G23, G13)

    # Poisson ratios
    ν12 = 0.34 # Poisson between directions 12
    ν23 = 0.40 # Poisson between directions 23
    ν13 = 0.34 # Poisson between directions 13
    poisson = (ν12, ν23, ν13)

    # Tensile strength
    σT1 = 1400e6 # (Pa) Tension strength in direction 1
    σT2 = 30e6 # (Pa) Tension strength in direction 2
    σT3 = 30e6 # (Pa) Tension strength in direction 3
    σC1 = 335e6 # (Pa) Compression in direction 1
    σC2 = 158e6 # (Pa) Compression in direction 2
    σC3 = 158e6 # (Pa) Compression in direction 3
    tensile = (σT1, σT2, σT3, σC1, σC2, σC3)

    # Shear strength
    τ12 = 49e6 # (Pa) Shear strength in plane 12
    τ23 = 37e6 # (Pa) Shear strength in plane 23
    τ13 = 37e6 # (Pa) Shear strength in plane 13
    shear = (τ12, τ23, τ13)

    return Composite(phisycal..., stiffness..., poisson..., tensile..., shear...)
end

function AramidMesh()
    # Phisycal properties
    t = 0.2e-3 # (m) Composite layer thickness
    ρ = 1380 # (kg/m^3) Density
    phisycal = (t, ρ)

    # Stiffness properties
    E1 = 29e9 # (Pa) Young module in direction 1
    E2 = 29e9 # (Pa) Young module in direction 2
    E3 = 5.5e9 # (Pa) Young module in direction 3
    G12 = 18e9 # (Pa) Shear module in plane 12
    G23 = 1.8e9 # (Pa) Shear module in plane 23
    G13 = 2.2e9 # (Pa) Shear module in plane 13
    stiffness = (E1, E2, E3, G12, G23, G13)

    # Poisson ratios
    ν12 = 0.05 # Poisson between directions 12
    ν23 = 0.05 # Poisson between directions 23
    ν13 = 0.05 # Poisson between directions 13
    poisson = (ν12, ν23, ν13)

    # Tensile strength
    σT1 = 369e6 # (Pa) Tension strength in direction 1
    σT2 = 369e6 # (Pa) Tension strength in direction 2
    σT3 = 30e6 # (Pa) Tension strength in direction 3
    σC1 = 129e6 # (Pa) Compression in direction 1
    σC2 = 129e6 # (Pa) Compression in direction 2
    σC3 = 158e6 # (Pa) Compression in direction 3
    tensile = (σT1, σT2, σT3, σC1, σC2, σC3)

    # Shear strength
    τ12 = 113e6 # (Pa) Shear strength in plane 12
    τ23 = 33e6 # (Pa) Shear strength in plane 23
    τ13 = 33e6 # (Pa) Shear strength in plane 13
    shear = (τ12, τ23, τ13)

    return Composite(phisycal..., stiffness..., poisson..., tensile..., shear...)
end

# ================================= Aliases ================================= #
CU = CarbonUnidirectional
CM = CarbonMesh
AU = AramidUnidirectional
AM = AramidMesh

end # module
