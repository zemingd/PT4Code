h, a = gets.chomp.split.map(&:to_i)
puts  h%a==0 ?  h/a : h/a+1
