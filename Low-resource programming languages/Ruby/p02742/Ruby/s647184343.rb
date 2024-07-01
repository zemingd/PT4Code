h,w = gets.split.map(&:to_i)

if h%2 == 0 || w%2 == 0
  ans = w*h/2
else
  ans = w*(h-1)/2 + (w/2.0).ceil
end

puts ans