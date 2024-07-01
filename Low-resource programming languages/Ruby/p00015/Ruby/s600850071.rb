n = gets.to_i
n.times{
  a = gets.to_i
  b = gets.to_i
  sum = a + b
  if sum >= 10 ** 80 then
    puts "overflow"
  else
    puts sum
  end
}