using Documenter, ParseMiniseed

makedocs(;
    modules=[ParseMiniseed],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/kura-okubo/ParseMiniseed.jl/blob/{commit}{path}#L{line}",
    sitename="ParseMiniseed.jl",
    authors="kura-okubo",
    assets=[],
)
