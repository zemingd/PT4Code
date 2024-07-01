h,w = gets.split.map(&:to_i)

if h==1 || w==1
  ans = 1
else
  ans = (w*h+1)/2
end

puts ans