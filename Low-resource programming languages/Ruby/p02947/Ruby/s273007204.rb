N = gets.to_i
array = [ gets.chomp.chars.sort ]
count = 0

(1...N).each do
  s = gets.chomp.chars.sort
  array.each { |a| count += 1 if s == a }
  array << s
end

puts count