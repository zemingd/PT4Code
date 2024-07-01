N = gets.to_i
arr = gets.chomp.chars
count = 1
arr.each_cons(2) do |a, b|
  count += 1 if a != b
end
puts count