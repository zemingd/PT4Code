s    = gets.chomp.chars
cnt0 = 0
cnt1 = 0
ans  = 0

s.each do |c|
  if c == '0'
    if cnt1 > 0
      cnt1 -= 1
      ans += 2
    else
      cnt0 += 1
    end
  else #c == '1'
    if cnt0 > 0
      cnt0 -= 1
      ans += 2
    else
      cnt1 += 1
    end
  end
end
puts ans
