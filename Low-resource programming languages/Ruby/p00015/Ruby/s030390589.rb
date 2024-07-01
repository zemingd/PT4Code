N = gets.to_i

N.times{
  sum = gets.to_i + gets.to_i

  #if sum >= 10**80
  #  puts "overflow"
  #else
  #  puts sum
  #end

  puts sum >= 10**80 ? "overflow" : sum
}