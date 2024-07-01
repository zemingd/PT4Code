gets.to_i.times do
  a = gets.to_i
  b = gets.to_i
  sum = a + b
  if [a, b, sum].none?{|i| i > 10**9 - 1}
    puts sum
  else
    puts "overflow"
  end
end