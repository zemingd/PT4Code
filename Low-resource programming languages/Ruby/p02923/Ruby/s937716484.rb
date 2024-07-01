gets
ary = gets.split.map(&:to_i)
tmp = 0
last = 0
ans = []

ary.each do |a|
  if last < a
    ans << tmp
    tmp = 0
  else
    tmp += 1
  end
  last = a
end

ans << tmp
puts ans.max