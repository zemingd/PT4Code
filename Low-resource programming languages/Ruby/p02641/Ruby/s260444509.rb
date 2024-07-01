x,n = gets.split.map(&:to_i)
if n == 0
  puts x
  exit
end

a = gets.split.map(&:to_i)

b = (1..100).to_a
ans = 0
cnt = 10**10
(b - a).each do |i|
  diff = (x-i).abs
  if diff < cnt
    ans = i
    cnt = diff
  end
end
puts ans
