n, k = gets.chomp.split(' ').map {|v| v.to_i}

s = []
n.times do |i|
  r = gets.chomp.to_i
  s.push(r)
end

s.sort!
m1 = s[-1]
cnt = s.length - k + 1
cnt.times do |i|
  v = s[i + k - 1] - s[i]
  if v < m1
    m1 = v
  end
end

puts m1

