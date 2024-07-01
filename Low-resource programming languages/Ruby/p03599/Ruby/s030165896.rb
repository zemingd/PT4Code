a,b,c,d,e,f = gets.split.map(&:to_i)

answater = a
anssugar = 0
ansconcentration = 0

(30/a+1).times{|i|
  (30/b+1).times{|j|
    water = a*i+b*j
    (f/c+1).times{|k|
      (f/d+1).times{|l|
        sugar = c*k+d*l
        next if water==0
        next if sugar>e*water || water*100+sugar>f
        concentration = sugar/(water*100+sugar).to_f
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
