n = gets.to_i
a = gets.split.map(&:to_i)

brick= 1
ans = 0

0.upto(n-1) do |i|
  if a[i] == brick
    brick+=1
  else
    ans += 1
  end
end

puts ans.zero? ? -1 : ans