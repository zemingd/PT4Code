input = gets.chomp
arr = input.split(' ').map{|x| x.to_i}
answer = arr[0] / arr[1].to_f #整数を返す仕様なのでここでto_f
p answer
