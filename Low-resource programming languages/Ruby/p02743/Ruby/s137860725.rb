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
YesNo1(a.sqrt(1000) + b.sqrt(1000) < c.sqrt(1000))

# n = gi
# alp = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]
# stds = [0,1].repeated_permutation(n-1).to_a
# stds.each do |std|
#   newstd = [0] + std
#   #print newstd
#   count = 0
#   res = ""
#   newstd.each do |gonext|
#     if gonext == 1
#       count += 1
#     end
#     res += alp[count]
#   end
#   puts res
# end
