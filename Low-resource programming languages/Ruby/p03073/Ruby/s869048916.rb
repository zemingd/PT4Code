S = gets.chomp
ans01 = 0
ans10 = 0
S.chars.each_with_index{|c,i|
  if i % 2 == 0
    if c == "0"
      ans10 += 1
    else
      ans01 += 1
    end
  else
    if c == "0"
      ans01 += 1
    else
      ans10 += 1
    end
  end
}

if ans01 < ans10
  puts ans01
else
  puts ans10
end