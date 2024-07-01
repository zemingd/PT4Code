h,w = gets.split.map(&:to_i)

a = h*w

if a.odd?
  puts a / 2 + 1
else
  puts a / 2
end
