n, k = gets.chomp.split(' ').map{|x| x.to_i}
s = gets.chomp

a = (s[0] == '1' ? [] : [0]) + s.split(/(0+)/).map{|x| x.length} + (s[-1] == '0' ? [] : [0])

aa = []
(0...(a.length/2)).each do |i|
  aa[i] = a[2*i] + a[2*i+1]
end

t = aa[0, k].inject(:+)
m = t
(k...(aa.length)).each do |i|
  t = t - aa[i-k] + aa[i]
  if t >= m
    m = t
  end
end

puts m
