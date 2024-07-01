n = gets.to_i
as = gets.split.map(&:to_i)
o = Hash.new(0)
e = Hash.new(0)

osum = 0
esum = 0
n.times do |i|
  if i.odd?
    o[as[i]] += 1
    osum += 1
  else
    e[as[i]] += 1
    esum += 1
  end
end

o = o.to_a.sort{|a,b| b[1] <=> a[1]}
e = e.to_a.sort{|a,b| b[1] <=> a[1]}

if o == e
  if o.size == 1
    ans = osum - o[0][1] + esum
  else
    case o[1][1] <=> e[1][1]
    when -1
      ans = osum - o[1][1] + esum - e[0][1]
    when 0
      ans = osum - o[1][1] + esum - e[0][1]
    when 1
      ans = osum - o[0][1] + esum - e[1][1]
    end
  end
else
  ans = osum - o[0][1] + esum - e[0][1]
end

puts ans
