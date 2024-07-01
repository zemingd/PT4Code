x = gets.chomp.to_i
r = 120

(-r..r).each{|a|
  (-r..r).each{|b|
    if a**5 - b** 5 == x
      puts "#{a} #{b}"
      exit
    elsif b > a
      break
    end
  }
}