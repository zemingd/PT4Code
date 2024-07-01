s = gets.chop
k = gets.chop.to_i

flag = 0


for i in 0..k-1
  unless s[i] == '1' then
    flag = 1
    break
  end
end

if flag == 1 then
  for i in 0..s.length-1
    unless s[i] == '1' then
      ans = s[i]
      break
    end
  end
  puts ans
else
  puts '1'
end
