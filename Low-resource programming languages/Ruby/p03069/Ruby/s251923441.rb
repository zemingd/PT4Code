n = gets.to_i
s = gets.chomp.bytes
dot = '.'.ord
ns = '#'.ord
ad = s.count(dot)
an = s.count(ns)
min = [ad, an].min
nc = 0
f = false
n.times do |i|
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
if nc > 0
  min = ad + nc if min > ad + nc
end
p min