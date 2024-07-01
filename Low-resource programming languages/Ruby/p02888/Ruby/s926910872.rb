n = gets.to_i
l=gets.chomp.split(" ").map(&:to_i)

ans = 0
for i in 0..n-3
  for j in i+1..n-2
    for k in j+1..n-1
      if l[i] < l[j] + l[k] && l[j] < l[k] + l[i] && l[k] < l[i] + l[j]
        ans += 1
      end
    end
  end
end

puts ans
