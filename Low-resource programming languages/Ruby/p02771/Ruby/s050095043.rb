A, B, C = gets.split.map(&:to_i)

require 'set'
set = Set.new([A, B, C])
puts(set.size == 2 ? 'Yes' : 'No')