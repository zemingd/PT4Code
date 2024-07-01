n = gets.to_i
a = gets.split.map(&:to_i)

brick= 0
ans = 0

0.upto(n-1) do |i|
  if a[i] == brick + 1
    brick+=1
  else
    ans += 1
  end
end

puts brick <=0 ? -1 : ans