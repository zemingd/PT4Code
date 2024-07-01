s = gets.chomp
q = gets.to_i
q.times do
  ary = gets.chomp
  if ary.length == 1
    s = s.reverse
  else
    s=ary[2].to_i == 1 ? ary[4]+s : s+ary[4]
  end
end
puts s