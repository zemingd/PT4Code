gets
a = gets.chomp.split.map(&:to_i)
a_size = a.size

if a_size == 2
  puts a.inject(&:-).abs
  exit
end

sum = 0
remining = a.inject(&:+)
min = Float::MAX

a.each.with_index(1) do |_a, index|
  break if index == a_size

  sum += _a
  remining -= _a
  min = [min, (sum - remining).abs].min
end

puts min