require 'bigdecimal'
a,b,c=gets.split.map {|x| BigDecimal(x).sqrt(40)}
puts BigDecimal("0.#{'0'*40}1")+a+b-c < 0 ? :Yes : :No