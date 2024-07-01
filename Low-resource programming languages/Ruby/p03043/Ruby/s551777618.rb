N, K = gets.split(" ").map(&:to_i)

answer = 0

N.times.each do |n|
  if n + 1 < K
    m = n + 1
    i = 0
    while m < K
      m = m * 2
      i += 1
    end
    answer += (Rational(1, N) * (Rational(1, 2) ** i)).to_f
  else
    answer += Rational(1, N).to_f
  end
end

puts answer
