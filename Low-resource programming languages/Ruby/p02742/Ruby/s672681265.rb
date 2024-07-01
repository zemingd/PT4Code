h,w = gets.chomp.split.map(&:to_i)

if h == 1 or w == 1
  puts 1
  exit
end

if h.odd? && w.odd?
  puts (h * w )/2 + 1
else
  puts (h * w)/2
end