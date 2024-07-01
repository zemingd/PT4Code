require 'prime'

n = gets.chomp.to_i
arr = gets.chomp.split(' ').map { |i| i.to_i.prime_division.map { |j| j.first } }
hash = Hash.new(0)
max = 0
arr.each do |i|
  i.each do |j|
    hash[j] += 1
    max = [max, hash[j]].max
  end
end

if max == 1
  puts 'pairwise coprime'
elsif max != n
  puts 'setwise coprime'
else
  puts 'not coprime'
end
