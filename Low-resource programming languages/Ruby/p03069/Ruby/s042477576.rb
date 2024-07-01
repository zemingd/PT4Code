n = gets.to_i
s = gets.chomp.bytes
dot = '.'.ord
ns = '#'.ord
ad = s.count(dot)
an = s.count(ns)
min = [ad, an].min
n.pred.times do |i|
  if s[i] == dot
    ad -= 1
  elsif s[i + 1] == dot
    min = ad + 1 if min > ad + 1
  end
end
p min