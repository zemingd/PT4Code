n, k =  gets.split(' ').map!(&:to_i)
hp = gets.split(' ').map!(&:to_i).sort!

hp.pop(k)


puts hp.empty? ? 0 : hp.inject(:+)
