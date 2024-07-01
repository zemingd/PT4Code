A = gets.chomp.to_i(10)
B = gets.chomp.to_i(10)

if A == 1 && B == 2 then
  puts "3"
elsif A == 1 && B == 3 then
  puts "2"
elsif A == 2 && B == 1 then
  puts "3"
elsif A == 2 && B == 3 then
  puts "1"
elsif A == 3 && B == 1 then
  puts "2"
elsif A == 3 && B == 2 then
  puts "1"
else
  #全ての条件式が偽の時に実行する処理
end