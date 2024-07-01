 require 'bigdecimal'
 a,b,c = gets.split.map {|x| BigDecimal(x).sqrt(20)}
 puts a+b-c+BigDecimal("0.#{'0'*20}") < 0 ?  :Yes : :No