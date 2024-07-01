h,w = gets.split.map(&:to_i)

if (h*w) % 2 ==1
  puts (h*w/2) +1
else
  puts h*w/2
end
