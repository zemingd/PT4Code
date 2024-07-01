x=gets.chop.chars
$><<(0..8).map{|i|x.zip((0..2).map{|b|'+-'[i[b]]})*''}.find{|s|eval(s)==7}+"=7"