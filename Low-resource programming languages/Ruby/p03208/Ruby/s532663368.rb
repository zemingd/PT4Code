require "bigdecimal"
require "bigdecimal/util"

def gi() gets.to_i end
def gs() gets.chomp end
def gmi() gets.split.map(&:to_i) end
def gms() gets.split.map(&:chomp) end
def YesNo1(bool, yes="Yes", no="No") puts (bool ? yes : no) end
def YESNO2(bool, yes="YES", no="NO") puts (bool ? yes : no) end

def comb(n,k)
  return nil if k > n
  result = 1
  1.upto() do |d|
    result *= n
    result /= d
    n -= 1
  end
  result
end

def perm(n,k)
  return nil if k > n
  result = 1
  k.times do
    result *= n
    n -= 1
  end
  result
end

def kaibun(str)
  str == str.reverse
end

#####
n,k = gmi
trees = []
n.times do
  trees.push(gi)
end
trees.sort!
#print trees

min = 1000000000
(n-k+1).times do |i|
  #puts i
  #puts trees[i+k-1] - trees[i]
  min = [min,trees[i+k-1] - trees[i]].min
end
puts min