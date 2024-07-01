n = gets.to_i
L = gets.split.map(&:to_i)

ret = 0
0.upto(n - 3) do |i|
  a = L[i]
  (i + 1).upto(n - 2) do |j|
    b = L[j]
    (j + 1).upto(n - 1) do |k|
      c = L[k]
      ret += 1 if a < (b + c) && b < (c + a) && c < (a + b)
    end
  end
end
puts ret