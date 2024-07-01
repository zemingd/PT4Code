N = gets.to_i
L = gets.split.map(&:to_i).sort

ans = 0

0.upto(N - 3) do |i|
  a = L[i]
  (i + 1).upto(N - 2) do |j|
    b = L[j]
    idx = L.bsearch_index { |l| l >= a + b }
    idx = N - 1 if idx.nil?
    (j + 1).upto(idx) do |k|
      c = L[k]
      ans += 1 if a < b + c && b < c + a && c < a + b
    end
  end
end

puts ans
