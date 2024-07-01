n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort

if k < h.size
  puts h.slice!(0,h.size-k).inject(:+)
else
  puts 0
end


