"""
Module for Parse miniseed format for processing seismological dataset.
All modules used in this package is copied from https://github.com/jpjones76/SeisIO.jl
This module enables to use parsemseed function.
2019/02/18 Kurama Okubo
"""
module ParseMiniseed
using Dates, Printf, Blosc, Sockets
__precompile__(true)
path = Base.source_dir()

export parsemseed

path = Base.source_dir()
const datafields = [:id, :name, :loc, :fs, :gain, :resp, :units, :src, :notes, :misc, :t, :x]
const hdrfields = [:id, :ot, :loc, :mag, :int, :mt, :np, :pax, :src, :notes, :misc]

#Do not change order of list because of dependency

list = ["SEED",  "SeisData", "mSEED",  "SeisHdr", "SeisChannel", "SeisEvent", "show", "sync",
		"time", "note", "read", "write", "tnote"]

for lname in list
	include("$lname.jl")
end

end
