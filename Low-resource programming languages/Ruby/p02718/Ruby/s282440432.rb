n, m = gets.split.map(&:to_i)
ai = gets.split.map(&:to_i).sort.reverse
sum = ai.inject(:+)
puts 4*m*ai[m-1] >= sum ? "Yes" : "No"