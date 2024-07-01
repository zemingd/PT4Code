k = gets.chomp.to_i
a, b = gets.chomp.split(' ').map(&:to_i)

(b / k) - (a / k) >= 1 ? print('OK') : print('NG')

