n = gets.to_i
n.times do |i|
  a = gets.split("")
  b = gets.split("")
  if a[0].to_i >= 5 and b[0].to_i >= 5 and a.size >= 79 and b.size >= 79
    puts "overflow"
  else
    a = a.join("").to_i
    b = b.join("").to_i
    puts a + b
  end
end