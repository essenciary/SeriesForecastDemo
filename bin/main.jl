# This file is used for integration with JuliaHub
using GenieFramework
Genie.loadapp()
include("app.jl")
using .App
Genie.up()
