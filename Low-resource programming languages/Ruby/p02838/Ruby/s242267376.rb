N = gets.to_i
as = gets.split(' ').map(&:to_i)
sum = 0
0.upto(N - 2) do |i|
  (i + 1).upto(N - 1) do |j|
    sum += as[i] ^ as[j]
  end
end
puts sum % (10 ** 9 + 7)