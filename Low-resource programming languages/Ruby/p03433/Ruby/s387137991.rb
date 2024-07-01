n = gets.to_i
a = gets.to_i

ans = (n % 500) ## 乗算をしてる

if ans < a ## a は 1 円なので ans が 499 でもへーき
  puts "Yes"
else
  puts "No"
end