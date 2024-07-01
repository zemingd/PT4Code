h, w = gets.split.map(&:to_i)

if h%2 == 0 || w % 2 == 0
  puts w * h / 2
else
  puts ((w+1)/2) * ((h+1)/2) * (w/2) * (h/2)
end