K=gets.chomp.to_i
i=0
1.upto(K){|a|
  1.upto(K){|b|
    1.upto(K){|c|
      	d=a.gcd(b).gcd(c)
      if i < d
        i=d
      end
      }
    }
  }

puts i
