require 'bigdecimal'
a,b,c=gets.split.map {|x| BigDecimal(x).power(0.5,1000)}
puts a+b<c ? :Yes: :No