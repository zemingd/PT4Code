h, n = gets.split.map(&:to_i)
ai = gets.split.map(&:to_i)
sum = ai.inject(&:+)

puts sum>=h ? "Yes" : "No"