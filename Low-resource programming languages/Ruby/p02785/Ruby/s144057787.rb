h,k=gets.chomp.split(' ').map(&:to_i)
enemies = gets.chomp.split(' ').map(&:to_i)
enemies.sort!{|a,b|a<=>b}
enemies.pop(k)
puts enemies.inject(0){|sum,i|sum+i}
