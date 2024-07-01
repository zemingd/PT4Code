n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
cnt = 0

array.each_with_index do |number, idx|
  cnt += 1 if array.slice(0..idx).min == number
end

puts cnt