gets
a = gets.split.map {|x| x.to_i}
s = 0
mns = 0
mn = 100000000000
a.each { |v|
  s += v.abs
  if v < 0
    mns += 1
  end
  if v.abs < mn
    mn = v.abs
  end
}
if mns % 2 == 1
  s -= 2*mn
end
puts s
