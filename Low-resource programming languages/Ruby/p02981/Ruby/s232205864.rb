L, R = gets.split.map(&:to_i)
array = (L..R).to_a

min = 2018
array.combination(2) do |a, b|
  (puts min ; exit) if min == 0
  mod = (a * b) % 2019
  min = mod if mod < min
end

puts min
