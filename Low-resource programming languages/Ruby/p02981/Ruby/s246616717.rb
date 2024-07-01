n, a, b = gets.chomp.split.map(&:to_i)
x = n * a # 電車の運賃

if x < b
  puts x
elsif x > b
  puts b
else x == b
  puts x
end
