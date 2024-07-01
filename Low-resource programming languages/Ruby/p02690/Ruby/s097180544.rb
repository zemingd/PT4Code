x = gets.to_i

-300.upto(300) {|a|
  -300.upto(300) {|b|
    if a ** 5 - b ** 5 == x then
      puts "#{a} #{b}"
      exit
    end
  }
}
