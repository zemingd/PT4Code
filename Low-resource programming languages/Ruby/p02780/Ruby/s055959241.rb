N, K = gets.chomp.split(" ").map(&:to_i)
Dice = gets.chomp.split(" ").map(&:to_i)
max, i = 0, 0
s = Dice[0..(K - 1)].inject(:+)
max = s

(N - K).times do
   s = s + Dice[K + i] - Dice[i]
   if s >= max
      max = s
   end
   i += 1
end

puts "#{(max+K).quo(2).to_f}"