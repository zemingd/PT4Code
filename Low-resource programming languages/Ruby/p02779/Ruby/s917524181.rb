#!/usr/bin/ruby

require 'pp'
require 'set'

set = Set.new()

N  = gets.chomp.to_i

A = gets.chomp.split(" ").map(&:to_i)

A.each{|a|
  if set.add?(a) == nil
    puts "NO"
    exit
  end
}

puts "YES"

