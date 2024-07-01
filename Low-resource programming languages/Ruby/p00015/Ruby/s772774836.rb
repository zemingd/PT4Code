n = gets.chomp.to_i
for i in 0...n
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  if a+b>=1e80
    puts "overflow"
  else
    puts a+b
  end
end