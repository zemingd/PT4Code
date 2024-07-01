N = gets.to_i
L = gets.split.map(&:to_i)
L.sort!
# p L
ans = 0

(N - 1).downto(2) do |i|
  (i - 1).downto(1) do |j|
    min_len = (L[i] - L[j]).abs
    pos = L.bsearch_index { |l| l > min_len }
    # p [L[i], L[j], i, j, min_len, pos, j - pos]
    ans += [j - pos, 0].max
  end
end

puts ans
