n = gets.to_i
a = gets.split.map &:to_i

cnt = 0
flag = true
while flag
  flag = false
  (n - 1).downto(1) do |j|
    if a[j] < a[j - 1]
      a[j], a[j - 1] = a[j - 1], a[j]
      cnt += 1
      flag = true
    end
  end
end

puts a.join(" ")
puts cnt
