module Composites

# ================================= Imports ================================== #


# ================================= Exports ================================== #
export Composite # Data type
export CarbonFiber # Materials

# ============================= Struct Definition ============================ #
struct Composite end

# ================================= Defaults ================================= #
function CarbonFiber()
    return Composite()
end


end # module
