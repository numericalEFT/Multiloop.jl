using Multiloop
using Documenter

DocMeta.setdocmeta!(Multiloop, :DocTestSetup, :(using Multiloop); recursive=true)

makedocs(;
    modules=[Multiloop],
    authors="Kun Chen, Daniel Cerkoney",
    repo="https://github.com/NumericalEFT/Multiloop.jl/blob/{commit}{path}#{line}",
    sitename="Multiloop.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://NumericalEFT.github.io/Multiloop.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/NumericalEFT/Multiloop.jl",
    devbranch="master",
)
