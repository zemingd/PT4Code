w, h, n = gets.split.map(&:to_i)
ary = []
x = 0
y = 0
n.times do
  ary << gets.split.map(&:to_i)
end
ary.each do |i|
  if i[2] == 1 
    x = i[0] if x < i[0]
  elsif i[2] ==2
    w = i[0] if w > i[0]
  elsif i[2] == 3
    y = i[1] if y < i[1]
  elsif i[2] == 4
    h = i[1] if h > i[1]
  end
end
if w-x<=0 || h-y<=0
  puts 0
else
  puts (w-x)*(h-y)
end
