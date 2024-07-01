def gi() gets.to_i end
def gs() gets.chomp end
def gim() gets.split.map(&:to_i) end
def gsm() gets.split.map(&:chomp) end
def YesNo1(bool, yes="Yes", no="No") puts (bool ? yes : no) end
def YESNO2(bool, yes="YES", no="NO") puts (bool ? yes : no) end
def sqrt(i) i ** (1.0/2) end

require "bigdecimal"
#####

n,m = gim

ns = [0] * n
ms = [0] * m
print ns.combination(2).count + ms.combination(2).count