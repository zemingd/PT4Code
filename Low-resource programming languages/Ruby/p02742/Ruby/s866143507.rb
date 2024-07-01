h,w = gets.chomp.split.map(&:to_i)

if h.odd? && w.odd?
  puts (h * w )/2 + 1
else
  puts (h * w)/2
end