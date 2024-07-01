require 'prime'
n = gets.to_i
nums = gets.split.map(&:to_i)
hash = Hash.new(0)
nums.each do |num|
  Prime.prime_division(num).each do |k, _|
    hash[k] += 1
  end
end

max = hash.values.max
if max == n
  puts "not coprime"
elsif max > 1
  puts "setwise coprime"
else
  puts "pairwise coprime"
end
