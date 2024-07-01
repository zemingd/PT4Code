def buffet(a, b, c)
  ans = 0
  a.map! { |i| i - 1 }
  prev = -2
  a.each do |i|
    ans += b[i]
    if prev == i - 1
      ans += c[i - 1]
    end
    prev = i
  end
  ans
end

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

puts buffet(a, b, c)