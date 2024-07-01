require 'prime'
a, b = gets.chomp.split(' ').map(&:to_i)
factors_a = a.prime_division.map{ |i| i[0] }
factors_b = b.prime_division.map{ |i| i[0] }
factors_hash_a = Hash.new(false)
factors_a.each do |i|
  factors_hash_a[i] = true
end
count = 0
factors_b.each do |i|
  count += 1 if factors_hash_a[i]
end
puts count + 1