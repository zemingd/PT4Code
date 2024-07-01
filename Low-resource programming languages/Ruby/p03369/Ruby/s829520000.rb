str = gets
puts str.split('').map{|e| e == 'o' ? 100 : 0 }.inject(700, :+)