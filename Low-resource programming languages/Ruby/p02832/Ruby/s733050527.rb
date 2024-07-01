n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

num = 1
ans = 0

(0..n-1).each do |i|
  if a[i] != num
    ans += 1
  else
    num = a[i] + 1 
  end
end
ans = -1 if ans == n

puts ans