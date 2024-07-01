puts ->(n){Math.log10(n/Math.sqrt(n).to_i.downto(1).find{|i|n%i==0}).to_i+1}
.call(gets.to_i)
