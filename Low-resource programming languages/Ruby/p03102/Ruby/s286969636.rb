N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
ans = 0
N.times do
  sum = gets.split.map(&:to_i).zip(B).inject(0) do |s, (a, b)|
    s += a * b
  end
  ans += 1 if sum + C > 0
end
p ans