x = gets.to_i

p(
  case x % 11
  when 0 then (x / 11) * 2
  when 1..6 then (x / 11) * 2 + 1
  else (x / 11) * 2 + 2
  end
)