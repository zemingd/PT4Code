N, K = gets.chomp.split(" ").map(&:to_i)
Dice = gets.chomp.split(" ").map(&:to_i)
E = []
Dice.each do |x|
    E << (x + 1) / 2
end

s, max = 0
i = 0

while i <= K do
   (N-K+1).times do |i|
    s += E[i]
   end
   if max <= s
    max = s
   end
   i += 1
end

puts "#{max}"