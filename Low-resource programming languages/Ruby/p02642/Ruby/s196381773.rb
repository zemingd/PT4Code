#!/usr/bin/env ruby

require 'prime'

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).tally.select {|a, count| count == 1 }.keys

A.sort!

founds = []

A.reject! do |a|
  if a.prime?
    founds << a
    true
  end
end

founds.each do |found|
  1.upto(A.size) do
    a = A.shift

    next if a % found == 0

    A << a
  end
end

loop do
  found = A.shift

  break unless found

  founds << found

  1.upto(A.size) do
    a = A.shift

    next if a % found == 0

    A << a
  end
end

p founds.size
