io = STDIN
h,w=io.gets.split.map(&:to_i)
if (h*w).even?
  puts h*w/2
elsif w==1 || h==1
  puts 1
else
  puts (h*w+1)/2
end
