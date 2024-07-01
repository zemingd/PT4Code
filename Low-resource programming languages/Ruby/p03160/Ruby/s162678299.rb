def gi() gets.to_i end
def gs() gets.chomp end
def gim() gets.split.map(&:to_i) end
def gsm() gets.split.map(&:chomp) end
def YesNo1(bool, yes="Yes", no="No") puts (bool ? yes : no) end
def YESNO2(bool, yes="YES", no="NO") puts (bool ? yes : no) end
#####

n = gi
hs = gim

dp = []
(n).times.each{|i| dp << 1000000}
dp[0] = 0
(1..n-1).each do |i|
  dp[i] = [dp[i],dp[i-1]+(hs[i]-hs[i-1]).abs].min
  if i != 1
    dp[i] = [dp[i],dp[i-2]+(hs[i]-hs[i-2]).abs].min
  end
end
puts dp[-1]