n = gets.to_i
input = Array.new
n.times do |i|
  input << gets.to_i
end

sum = input.inject(:+)
if sum % 10 != 0 then
  puts sum
else
  input.sort!
  n.times do |i|
    if input[i] %10 != 0
      puts sum - input[i]
    end
  end
  puts 0
end