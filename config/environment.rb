require 'bundler/setup'
Bundler.require
require_rel '../app'

rj = Follower.new("Renier", 30, "Live and Let Live")
rohit = Follower.new("Rohit", 23, "IDK!")

dankChickeneater = Cult.new("chiken eater", "Seattle", 1969, "We eat chicken")
pexhillyCult = Cult.new("Norf Gang", "Philly", 1969, "Norf Norf")
bloodoath1 = Bloodoath.new(rj, dankChickeneater, )