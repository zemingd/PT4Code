puts ->(n){Math.log10(Math.sqrt(n).to_i.upto(n).find{|i|n%i==0}).to_i+1}
.call(gets.to_i)
