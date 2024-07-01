n = gets.chomp.to_i
sum = 0
x = gets.chomp.split(' ').map{|i|
  ii = i.to_i
  sum += ii
  ii
}

ave = (1.0 * sum) / n

low = ave.floor
hi = low + 1

lowsum = 0
hisum = 0
x.each{|i|
  lowsum += (low - i) ** 2
  hisum += (hi - i) ** 2
}

puts lowsum < hisum ? lowsum : hisum
