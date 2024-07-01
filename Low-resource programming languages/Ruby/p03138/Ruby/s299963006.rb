n,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

k_digit = k.to_s(2).rjust(40, "0")
bits = []
as.each do |a|
  bits << a.to_s(2).rjust(40, "0").chars
end

best = ""

bits.transpose.each.with_index do |bit, i|
  one = bit.count("1")
  if one > n/2
    d = "0"
  else
    d = "1"
  end
  best << d
end

dp = {}
dp[0] = {}
if k_digit[0] == "1" && best[0] == "0"
  dp[0][:smaller] = true
  dp[0][:value] = "0"
elsif k_digit[0] == best[0]
  dp[0][:smaller] = false
  dp[0][:value] = best[0]
else
  dp[0][:smaller] = false
  dp[0][:value] = k_digit[0]
end

k_digit.size.times.with_index(1) do |_,i|
  break if k_digit[i].nil?
  dp[i] = {}
  if dp[i-1][:smaller]
    dp[i][:smaller] = true
    dp[i][:value] = dp[i-1][:value] + best[i]
  else
    if k_digit[i] == "1" && best[i] == "0"
      dp[i][:smaller] = true
      dp[i][:value] = dp[i-1][:value] + best[i]
    elsif k_digit[i] == best[i]
      dp[i][:smaller] = false
      dp[i][:value] = dp[i-1][:value] + best[i]
    else
      dp[i][:smaller] = false
      dp[i][:value] = dp[i-1][:value] + k_digit[i]
    end
  end
end

xor = dp[39][:value].to_i(2)
puts as.reduce(0) {|a,e| a+=xor^e}