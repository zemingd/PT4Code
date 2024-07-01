s = gets.chomp
t = gets.chomp.split("\s").map(&:to_i)

result = 0

t.each do |item|
    result += item - 1
end

puts result
