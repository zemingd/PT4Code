x, n = gets.split.map(&:to_i)
if n == 0
  puts x
  exit
end
ans = []
ary = gets.split.map(&:to_i)
ans << x unless ary.include?(x)
count = 1
while ans.length == 0
  unless ary.include?(x-count)
    ans << x-count
  end
  unless ary.include?(x+count)
    ans << x+count
  end
  count+=1
end
puts ans.min < 0 ? ans.max : ans.min
