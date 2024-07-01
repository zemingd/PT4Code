def hsum(num1, num2)
  num1array = num1.to_s(2).chars.map(&:to_i)
  num2array = num2.to_s(2).chars.map(&:to_i)
  keta = [num1array.count, num2array.count].max
  sum = []
  keta.times do |i|
    if ((num1array[-1 * (i+1)] || 0) + (num2array[-1 * (i+1)] || 0)) == 1
      sum << 1
    else
      sum << 0
    end
  end
  sum.reverse!.join.to_i(2)
end

n = gets.chomp.to_i
as = gets.split.map(&:to_i)
bool = "No"
ans = []
(n - 1).times do |i|
  ans = [as[0]]
  ans << as[i]
  (n - 2).times do |j|
    ans << hsum(ans[j], ans[j + 1]).to_s(10).to_i
  end
end
if ans[0] == hsum(ans[n - 1],ans[n - 2]).to_s(10).to_i && ans[1] == hsum(ans[0],ans[n - 1]).to_s(10).to_i
  if ans.sort! == as.sort!
    bool = "Yes"
  end
end
puts bool