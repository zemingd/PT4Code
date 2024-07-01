 require 'bigdecimal'
 a,b,c = gets.split.map {|x|
  BigDecimal(x).sqrt(14) +
  BigDecimal("0.#{'0'*14}1")
 }
 puts a+b<c ? :Yes : :No