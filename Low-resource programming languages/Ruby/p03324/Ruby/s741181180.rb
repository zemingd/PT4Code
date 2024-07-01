d, n = gets.split.map(&:to_i)
puts d === 0 ? 1 * n : ("1" + "0" * d * 2).to_i * n
