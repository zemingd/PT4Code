s = gets.chomp
q = gets.to_i
as = []
q.times do |i|
  a = gets.chomp.split
  if i != 0 && as[i-1][0] == 1 && a[0] == 1
    as.pop
    next
  end
  as.push a
end

as.each do |a|
  if a[0] == '1'
    s.reverse!
  else
    if a[1] == '1'
      s = a[2] + s
    else
      s += a[2]
    end
  end
end

puts s
