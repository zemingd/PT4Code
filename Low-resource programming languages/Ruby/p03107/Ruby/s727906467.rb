S = gets.chomp.split('').map(&:to_i)
red  = S.count(0)
blue = S.size-red
puts [red,blue].min*2
