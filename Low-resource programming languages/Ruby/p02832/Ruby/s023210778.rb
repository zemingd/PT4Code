N = gets.to_i
a = gets.split.map(&:to_i)
ans = 1
cnt = 0
(0..(N-1)).each do |i|
  if ans == a[i]
    ans += 1
  else
    cnt += 1
  end
end

if N == cnt
  puts -1
else
  puts cnt
end
