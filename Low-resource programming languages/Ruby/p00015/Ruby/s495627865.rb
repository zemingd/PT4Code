N = gets.to_i

N.times{
  sum = gets.to_i + gets.to_i

  #if sum.to_s.length > 80
  if sum >= 10**80
    puts "overflow"
  else
    puts sum
  end
}