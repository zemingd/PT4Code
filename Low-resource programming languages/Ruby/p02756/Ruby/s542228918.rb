s = gets.chomp
flg = true
gets.to_i.times{
  q, f, c = gets.chomp.split(" ")
  if q == '1' then
    flg = (not flg)
  else
    if (f == '1' && flg) || (f == '2' && (not flg)) then
      s = c.concat(s)
    else
      s = s.concat(c)
    end
  end
}

puts flg ? s : s.reverse
