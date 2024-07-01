require 'set'

n, k = gets.chomp.split.map(&:to_s)
ds = gets.chomp.split.map(&:to_i).sort
arrow_numbers = (Set.new((0..9)) - Set.new(ds)).to_a

result = arrow_numbers.repeated_permutation(n.length).map { |s| s.join("").to_i }.sort.select { |s| s >= n.to_i }.first

if result.nil? 
    result = arrow_numbers.repeated_permutation(n.length+1).map { |s| s.join("").to_i }.sort.select { |s| s >= n.to_i }.first
end

print result