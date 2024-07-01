N = gets.to_i
A = gets.split.map(&:to_i)
answer = 0

(0..(N - 2)).each do |i|
  ((i + 1)..(N - 1)).each do |j|
    answer += (A[i] ^ A[j])
    answer = answer % 1000000007 if answer >= 1000000007
  end
end

puts answer