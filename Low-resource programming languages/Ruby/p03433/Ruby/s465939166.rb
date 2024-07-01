n = gets.to_i
a = gets.to_i

ans = (n % 500) ## 乗算をしてる

if a < ans ## a は 1 円なので ans が 499 でもへーき
  puts "No"
else
  puts "Yes"
end