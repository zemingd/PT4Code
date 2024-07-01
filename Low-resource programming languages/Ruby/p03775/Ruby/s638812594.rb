N = gets.to_i
min = 10 ** 9

(1..Math::sqrt(N)).each do |i|
  next unless N % i == 0

  length = [i, (N / i)].map(&:to_s).map(&:length).max
  min = length if length < min
end

puts min