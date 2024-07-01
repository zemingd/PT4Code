n = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.to_i
end

a.sort!

cnt = 1
ans = 0

(n - 1).times do |i|
  if a[i] == a[i+1]
    cnt += 1
  else
    ans += 1 if cnt.odd?
    cnt = 1
  end
end

puts ans