h,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
if k === 0
  puts h.inject(:+)
else
  puts h.inject(:+) - h.max(k).inject(:+)
end