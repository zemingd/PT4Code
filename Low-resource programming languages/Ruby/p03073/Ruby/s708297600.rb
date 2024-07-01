s = gets.chomp
r = 0
if s[0] == "0"
  for i in 1...s.size
    if i.odd? && s[i] == "0"
      r += 1
    elsif i.even? && s[i] == "1"
      r += 1
    end
  end
else
  for i in 1...s.size
    if i.odd? && s[i] == "1"
      r += 1
    elsif i.even? && s[i] == "0"
      r += 1
    end
  end
end

p r