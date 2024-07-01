N, K = gets.chomp.split(" ").map(&:to_i)
Dice = gets.chomp.split(" ").map(&:to_i)
s, max = 0, 0

while Dice.size >= K do
   K.times do |i|
    s += Dice[i]
   end
   if (max <= s)
    max = s
   end
   s = 0
   Dice.shift()
end
puts "#{(max+K).quo(2).to_f}"
