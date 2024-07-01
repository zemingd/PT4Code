S = gets.chomp

ar = S.split("")
num1 = ar[0].to_i * 10 + ar[1].to_i
num2 = ar[2].to_i * 10 + ar[3].to_i
puts "#{num1}, #{num2}"
if num1 > 12 then
  if 0 < num2 && num2 <= 12 then
    puts "YYMM"
  else
    puts "NA"
  end
else
  if num1 == 0 then
    if 0 < num2 && num2 <= 12 then
      puts "YYMM"
    else
      puts "NA"
    end
  else
    if 0 < num2 && num2 <= 12 then
      puts "AMBIGUOUS"
    else
      puts "MMYY"
    end
  end
end
