n = gets.to_i
a = Array.new(n)
cnt = Array.new(n,0)
answ = Array.new(n)
sub = Array.new(n)

a = gets.chomp.split(' ').map(&:to_i)
n.times do |i|
  cnt[a[i]-1] += 1
end

n.times do |i|
  answ[i] = cnt[i]*(cnt[i]-1)/2;
  sub[i] = (cnt[i]-1)*(cnt[i]-2)/2;
end

k = answ.inject(0, :+)
n.times do |i|
  puts(k - answ[a[i]-1] + sub[a[i]-1])
end