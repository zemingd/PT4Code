h,a = gets.split(" ").map(&:to_i)
puts h/a + (h%a==0?0:1)
