a,b,c,d,e,f = gets.split.map(&:to_i)

answater = 0
anssugar = 0
ansconcentration = 0

(30/a+1).times{|i|
  (30/b+1).times{|j|
    water = a*i+b*j
    next if water==0
    (f*e/c/100+1).times{|k|
      (f*e/d/100+1).times{|l|
        sugar = c*k+d*l
        next if sugar>e*water || water*100+sugar>f
        concentration = (100000*sugar)/(water*100+sugar)
        if ansconcentration<concentration then
          answater = water
          anssugar = sugar
          ansconcentration = concentration
        end
      }
    }
  }
}

puts [answater*100+anssugar, anssugar]*' '