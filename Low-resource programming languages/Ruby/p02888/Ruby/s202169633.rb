n = gets.to_i
l = gets.split.map(&:to_i)
ans = 0
0.upto(n-3) do |i|
  (i+1).upto(n-2) do |j|
    (j+1).upto(n-1) do |k|
      if l[i] < l[j] + l[k] && l[j] < l[i] + l[k] && l[k] < l[i] + l[j]
        ans += 1
      end
    end
  end
end
puts ans