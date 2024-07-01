# frozen_string_literal: true
n = gets.chomp.to_i
a = gets.split.map(&:to_i)

prj = a.reduce(1) { |p, e| p * e }
puts a.reduce(prj) { |res, e| res.gcd(e) }
