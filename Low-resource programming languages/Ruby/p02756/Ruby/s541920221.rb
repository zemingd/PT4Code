s = gets.chomp
flg = false
gets.to_i.times{
  q, f, c = gets.chomp.split(" ")
  if q == '1' then
    flg = (not flg)
  else
    if (f == '1' && flg) || (f == '2' && (not flg)) then
      s = c + s
    else
      s = s + c.reverse
    end
  end
}

puts flg ? s : s.reverse
