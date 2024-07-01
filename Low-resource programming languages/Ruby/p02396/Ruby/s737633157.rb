num = 1
for int  in 1..10000 do
  int = gets.chomp
  puts "Case#{num}:#{int}"
  num += 1
  if int == 0
    break
  end 
end