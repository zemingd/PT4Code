n = gets.to_i
a = gets.split.map(&:to_i)

a.map!.with_index {|ai, i| ai - i - 1}

min = a.map(&:abs).inject(:+)
abs_max = a.map(&:abs).max
(-1*abs_max).upto(abs_max) do |b|
  result = a.inject(0) {|r, ai| r + (ai - b).abs}
  min = [min, result].min
end

puts min
