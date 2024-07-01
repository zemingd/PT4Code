def gi() gets.to_i end
def gs() gets.chomp end
def gim() gets.split.map(&:to_i) end
def gsm() gets.split.map(&:chomp) end
def YesNo1(bool, yes="Yes", no="No") puts (bool ? yes : no) end
def YESNO2(bool, yes="YES", no="NO") puts (bool ? yes : no) end
def sqrt(i) i ** (1.0/2) end

require "bigdecimal"
#####

a,b,c = gets.split.map{|str| BigDecimal(str)}
YesNo1(a.sqrt(200) + b.sqrt(200) < c.sqrt(200))