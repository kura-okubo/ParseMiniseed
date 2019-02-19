# ParseMiniseed
Parse miniseed format for processing seismic data.

## About SeisRequests
This package enable to use __parsemseed()__ in [jpjones76/SeisIO.jl](https://github.com/jpjones76/SeisIO.jl).

## Installing

Add ParseMiniseed like so:

```julia
(v1.0) pkg> add "https://github.com/kura-okubo/ParseMiniseed.jl"
```

## Example

```
using Dates
using SeisRequests, ParseMiniseed

starttime = DateTime(2009, 12, 1, 0, 0, 0)
endtime = DateTime(2009, 12, 2, 0, 0, 0)

req_NCEDC = FDSNDataSelect(network="BP", station="GHIB", channel="BP1", starttime=starttime, endtime=endtime, format="miniseed")
data_NCEDC = get_request(req_NCEDC; server="NCEDC", verbose=false)

seis_NCEDC = ParseMiniseed.SeisData()
seis_NCEDC += parsemseed(IOBuffer(data_NCEDC.body), false, 0)[1]
```
