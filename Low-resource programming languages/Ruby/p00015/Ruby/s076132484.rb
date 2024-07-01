n = gets.to_i
for i in 1..n
  a = gets.to_i
  b = gets.to_i
  a = a+b
  if a>=10**80
    puts "overflow"
  else
    puts a
  end
end
