a = gets.chop.to_i
b = gets.chop.to_i
c = gets.chop.to_i
d = gets.chop.to_i
e = gets.chop.to_i

times = [a,b,c,d,e]
ftimes = []

times.each_with_index do |t,i|
  s = t%10
  if s != 0
    ftimes.push(s)
  else
    ftimes.push(9)
  end
end

result = times[ftimes.index(ftimes.min)]
times.delete_at(ftimes.index(ftimes.min))


times.each_with_index do |t,i|
  s = t%10
  if s != 0
    result += (t-s+10)
  else
    result += t
  end
end

puts result
