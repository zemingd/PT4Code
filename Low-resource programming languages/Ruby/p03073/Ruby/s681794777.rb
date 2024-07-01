s = gets.chomp

tmp = 0
s.size.times do |i|
  if i.odd?
    if s[i] == '0'
      tmp += 1
    end
  else
    if s[i] == '1'
      tmp += 1
    end
  end
end

tmp2 = 0
s.size.times do |i|
  if i.odd?
    if s[i] == '1'
      tmp2 += 1
    end
  else
    if s[i] == '0'
      tmp2 += 1
    end
  end
end

p [tmp, tmp2].min
