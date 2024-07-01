h,w = gets.split.map(&:to_i)

a = h*w

if h == 1 or w == 1
  puts 1
else
  if a.odd?
    puts a / 2 + 1
  else
    puts a / 2
  end
end
