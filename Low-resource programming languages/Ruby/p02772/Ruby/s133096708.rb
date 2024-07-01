n = gets.to_i
ai = gets.split.map(&:to_i)

flag = ai.all? do |a|
  a.odd? || a%3 == 0 || a%5 == 0
end

puts flag ? "APPROVED" : "DENIED"