#!/usr/bin/env ruby
require 'prime'

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).tally.select {|a, count| count == 1 }.keys

A.sort!

primes = []

A.each do |a|
  primes << Prime.prime_division(a).to_h
end

founds = []

loop do
  found = primes.shift

  break unless found

  founds << found

  1.upto(primes.size) do
    prime = primes.shift
    if founds.any? {|found| found.all? {|b, e| prime[b] && prime[b] >= e } }
      next
    end

    primes << prime
  end
end

p founds.size
