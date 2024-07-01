require 'bigdecimal'
gets.to_i.times{
	a,b,c,d,e,f,g,h=gets.split.map(&method(:BigDecimal))
	puts (c-a)*(h-f)-(d-b)*(g-e)==0?"YES":"NO"
}