n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
sum = 0

n.times do |i|
  (i + 1).upto(n -1) do |j|
    sum += a[i] ^ a[j]
  end
end

puts sum % (10 ** 9 + 7)
