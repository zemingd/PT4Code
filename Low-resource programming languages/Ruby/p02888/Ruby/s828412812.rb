N = gets.to_i
L = gets.split.map(&:to_i)
sorted = L.sort

ans = 0
(0...(N - 1)).each do |ai|
  ((ai + 1)...N).each do |bi|
    a = sorted[ai]
    b = sorted[bi]
    n = a + b
    i = sorted.bsearch_index { |m| m >= n } || N
    ans += i - 1 - bi
  end
end
puts ans
