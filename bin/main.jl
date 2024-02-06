# This file is used for integration with JuliaHub
include("app.jl")
using .App
App.Genie.loadapp()
App.Genie.up()