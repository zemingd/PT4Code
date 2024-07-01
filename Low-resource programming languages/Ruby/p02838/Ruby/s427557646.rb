N = gets.to_i
A = gets.split.map(&:to_i)
answer = 0

(0..(N - 2)).each do |i|
  ((i + 1)..(N - 1)).each do |j|
    answer += A[i] ^ A[j]
  end
end

puts answer % (10**9 + 7)