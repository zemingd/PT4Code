n = gets.to_i
as = gets.split.map(&:to_i)
o = Hash.new(0)
e = Hash.new(0)
n.times do |i|
  if i.odd?
    o[as[i]] += 1
  else
    e[as[i]] += 1
  end
end

o = o.to_a.sort{|a,b| b[1] <=> a[1]}
e = e.to_a.sort{|a,b| b[1] <=> a[1]}

omax = o[0][0]
emax = e[0][0]

if omax == emax
  while true
    a = o.shift
    b = e.shift
    if a.nil? && b.nil?
      emax = -1
      break
    elsif a.nil?
      omax = -1
      break
    elsif b.nil?
      emax = -1
      break
    elsif (a[1] <=> b[1]) == 0
      next
    elsif (a[1] <=> b[1]) == -1
      emax = b[0]
      break
    elsif (a[1] <=> b[1]) == 1
      omax = a[0]
      break
    else
      raise
    end
  end
end

ans = 0
as.each.with_index do |a,i|
  if i.odd?
    ans += 1 if a != omax
  else
    ans += 1 if a != emax
  end
end

puts ans
