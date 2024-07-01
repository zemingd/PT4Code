n, q = gets.split.map(&:to_i)
s = gets.chomp
ans = []
q.times do |i|
  l, r = gets.split.map(&:to_i)
  substr = s[l-1..r-1]
  ans.push(substr.scan(/AC/).size)
end
puts ans