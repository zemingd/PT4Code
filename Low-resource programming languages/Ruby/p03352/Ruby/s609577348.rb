X = gets.to_i

if X <= 3
  puts 1
  exit
end

result = []
2.upto(32) do |i|
  2.upto(10) do |j|
    d = i ** j
    result << d if d <= X
  end
end

puts result.max