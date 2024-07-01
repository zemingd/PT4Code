n = gets.to_i
as = gets.split.map(&:to_i)

m = 10 ** 9 + 7

sum = 0

0.upto(n-2) do |i|
  (i+1).upto(n-1) do |j|
    a = (as[i] ^ as[j])
    sum += a
  end
end

puts sum % m