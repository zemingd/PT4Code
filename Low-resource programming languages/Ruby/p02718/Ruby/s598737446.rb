n, m = gets.strip.split.map(&:to_i)
ary = gets.strip.split.map(&:to_i).sort.reverse
ans = []
ary[0..(m-1)].each do |i|
  if i > ary.inject(&:+)/(4*m)
    ans << i
  end
end
puts ans.length == m ? "Yes" : "No"
