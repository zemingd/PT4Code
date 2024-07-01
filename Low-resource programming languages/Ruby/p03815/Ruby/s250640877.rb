x = gets.to_i
if (x%11).zero?
  puts (x/11)*2
else
  # 6で足りるか、6と5で足りるか
  if (x%11)<=6
    puts (x/11)*2+1
  else
    puts (x/11)*2+2
  end
end