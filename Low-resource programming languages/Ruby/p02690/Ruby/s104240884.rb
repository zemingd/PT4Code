x = gets.to_i

-100.upto(100) {|a|
  -100.upto(100) {|b|
    if a ** 5 - b ** 5 == x then
      puts "#{a} #{b}"
      exit
    end
  }
}
