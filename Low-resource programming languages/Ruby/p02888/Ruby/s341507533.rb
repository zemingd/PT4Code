n = gets.to_i
a = gets.split.map &:to_i
a.sort!

ans = 0
(n-2).times do |i|
  (i+1).upto(n-2) do |j|
    lo = j
    hi = n
    k = a[i] + a[j]
    while hi - lo > 1
      mid = (hi + lo) / 2
      a[mid] < k ? lo = mid : hi = mid
    end
    ans += lo - j
  end
end

puts ans