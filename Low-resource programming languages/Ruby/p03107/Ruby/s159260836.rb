$S = gets.chomp

ret = $S.split("").reduce([]) do |a, s|
  if a.size == 0
    a << s
  else
    if a[-1] != s
      a.pop
    else
      a << s
    end
  end
  a
end.join

puts $S.size - ret.size
