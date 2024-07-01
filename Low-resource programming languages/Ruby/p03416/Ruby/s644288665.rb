a,b = gets.chomp.split(" ").map(&:to_i)
cnt = 0

(a+1...b).each do |number|
  cnt += 1 if number.to_s.split("") == number.to_s.split("").reverse
end

puts cnt