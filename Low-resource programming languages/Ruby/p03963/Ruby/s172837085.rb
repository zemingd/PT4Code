    a,b = gets.chomp.split(" ").map{|u| u.to_i}
    kosu = 1
    a.times {|i|
      if(i == 0)
        kosu *= b 
      else
        kosu *= (b-1)
      end
    }
    puts kosu