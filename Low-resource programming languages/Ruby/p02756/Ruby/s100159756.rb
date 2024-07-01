s = gets.chomp.chars
q = gets.to_i

as = []
bs = []
f = 0
q.times do
  qq = gets.split
  if qq[0] == "1"
    f += 1
  else
    if (qq[1] == "1" && f.even?) || (qq[1] == "2" && f.odd?)
      as << qq[2]
    else
      bs << qq[2]
    end
  end
end

if f.odd?
  s.reverse!
  bs.reverse!
  puts (bs + s + as).join
else
  as.reverse!
  puts (as + s + bs).join
end