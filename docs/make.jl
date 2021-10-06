using Documenter
using gargamel

const ROOT = joinpath(@__DIR__, "..")
makedocs(
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true"
    ),
    sitename = "gargamel.jl",
    modules = [gargamel],
    authors = "Daniel Appelo, and contributors.",
    pages = Any[
        "Home" => "index.md",
        "Types" => "types.md",
        "Methods" => "methods.md",
        "Index" => "function-index.md",
    ],
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
 deploydocs(
    repo = "github.com/appelo/gargamel.jl.git",
    devbranch = "main"
)
