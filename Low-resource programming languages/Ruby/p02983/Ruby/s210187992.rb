l, r = gets.chomp.split(" ").map(&:to_i)

array = Array.new(r - l + 1) { |n| l + n }
mods = []

array.combination(2) do |i, j|
  mods.push(i * j % 2019)
end

puts mods.min
