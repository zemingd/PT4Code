require 'prime'

N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

prm = Hash.new{|h, k| h[k] = 0}
A.each{|a|
  Prime.prime_division(a).each{|k, v|
    prm[k] += 1
  }
}

if prm.all?{|k, v| v == 1} then
  puts 'pairwise coprime'
elsif prm.any?{|k, v| v == N} then
  puts 'not coprime'
else
  puts 'setwise coprime'
end
