n = gets.to_i
num = gets.strip.split.map(&:to_i)
ary = []
for i in 0..n-1
  if i%2==0
    ary.push(num[i])
  else
    ary.unshift(num[i])
  end
end
if n%2==0
  puts ary.join(" ")
else
  puts ary.reverse.join(" ")
end