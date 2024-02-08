# This script runs your Genie app as a JuliaHub Deployment

# Start Genie from the app directory
@warn("PWD: ", pwd())
@warn("@DIR", @__DIR__)
@warn("readdir", readdir())

cd("/opt/juliahub/appbundle/")

# don't send command line arguments to Genie
empty!(ARGS)

# set up environment for production
ENV["GENIE_ENV"] = "prod"
ENV["GENIE_BANNER"] = false

# load Genie app and start server
using GenieFramework
Genie.loadapp()
up(; async=false, port=9999, host="0.0.0.0")
