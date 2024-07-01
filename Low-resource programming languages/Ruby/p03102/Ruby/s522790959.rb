def ints
  gets.split.map(&:to_i)
end

N, M, C = ints
B = ints

ans = 0
N.times do
  _A = ints
  n = _A.zip(B).map{|a, b| a * b }.inject(&:+) + C
  if n > 0
    ans += 1
  end
end
puts ans
