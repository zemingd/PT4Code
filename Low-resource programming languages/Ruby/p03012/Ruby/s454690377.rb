n  = gets.to_i
r = gets.split.map(&:to_i)
l = []

def sum(ary)
  sum = 0
  ary.each{|a| sum+=a}
  return sum
end

min = Float::INFINITY
while not r.empty?
  min = [(sum(l) - sum(r)).abs, min].min
  l << r.shift
end

p min