n = gets.to_i
s = gets.chomp.bytes
dot = '.'.ord
ns = '#'.ord
s.pop while s[-1] == ns
ad = s.count(dot)
an = s.count(ns)
min = [ad, an].min
nc = 0
f = false
s.size.times do |i|
  if s[i] == dot
    f = true if nc > 0
    ad -= 1
  elsif f
    min = ad + nc if min > ad + nc
    f = false
    nc += 1
  else
    nc += 1
  end
end
p min