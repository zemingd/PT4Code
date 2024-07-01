a,b = gets.split.map(&:to_i)
ans = 0
for num in a..b do
  c = num.to_s.chars
  (c.length/2+1).times do |i|
    ans += 1 if c[i]=c[-i]
  end
end


puts ans