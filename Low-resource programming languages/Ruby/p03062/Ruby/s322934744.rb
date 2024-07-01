N = gets.to_i
As = gets.split.map(&:to_i)

bs = As.map(&:abs)
puts bs.inject(:+) - (As.count(&:negative?).even? || As.any?(&:zero?) ? 0 : 2 * bs.min)