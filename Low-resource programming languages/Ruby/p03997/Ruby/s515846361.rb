require "bigdecimal"
require "bigdecimal/util"

def gi() gets.to_i end
def gs() gets.chomp end
def gmi() gets.split.map(&:to_i) end
def gms() gets.split.map(&:chomp) end
def YesNo1(bool, yes="Yes", no="No") puts (bool ? yes : no) end
def YESNO2(bool, yes="YES", no="NO") puts (bool ? yes : no) end


#####
#
a = gi
b = gi
h = gi
puts (a+b)*h/2