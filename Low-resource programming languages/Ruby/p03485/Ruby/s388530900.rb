a = gets.split(' ').map(&:to_i)
ave = a.inject(:+) / 2.to_f
p ave.ceil