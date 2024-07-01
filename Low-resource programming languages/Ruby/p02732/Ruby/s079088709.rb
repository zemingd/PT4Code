def gi() gets.to_i end
def gs() gets.chomp end
def gim() gets.split.map(&:to_i) end
def gsm() gets.split.map(&:chomp) end
def YesNo1(bool, yes="Yes", no="No") puts (bool ? yes : no) end
def YESNO2(bool, yes="YES", no="NO") puts (bool ? yes : no) end
def sqrt(i) i ** (1.0/2) end

def comb(n,k)
  return 0 if k > n
  result = 1
  1.upto(k) do |d|
    result *= n
    result /= d
    n -= 1
  end
  result
end

require "bigdecimal"
#####
n = gi
nums = gim
countDic = {}
nums.each do |num| #O(N)
  if countDic[num] != nil
    countDic[num] = countDic[num] + 1
  else
    countDic[num] = 1
  end
end
#print countDic

combDic = {}
countDic.each do |k,v| #O(N)
  combDic[k] = comb(v,2)
end
#print combDic

resDic = {}
totalSum = combDic.values.inject(:+)
combDic.each do |k,v|
  otherSum = totalSum - combDic[k]
  otherSum = 0 if otherSum == nil
  resDic[k] = otherSum + comb(countDic[k]-1,2)
end
#print resDic

nums.each do |num|
  puts resDic[num]
end