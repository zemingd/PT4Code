require"prime";gets.to_i.downto(1){|k|d=k.prime_division;exit(p k)if d.size<2&&d.dig(0,1)!=1}