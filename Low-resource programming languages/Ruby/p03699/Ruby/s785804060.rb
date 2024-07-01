n = gets.to_i
input = Array.new
n.times do |i|
  input << gets.to_i
end

sum = input.inject(:+)
puts sum % 10 != 0 ? sum : sum - input.min