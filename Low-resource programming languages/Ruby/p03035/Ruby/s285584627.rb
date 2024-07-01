a,b=gets.split.map &:to_i

case a
  when 0..5
    p 0
  when 6..12
    p b / 2
  else
    p b
end
