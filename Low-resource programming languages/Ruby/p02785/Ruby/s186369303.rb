n, k = gets.split.map(&:to_i)
h = gets.chop.split.map(&:to_i)

if h.length < k
  puts 0
elsif k == 0
  puts h.inject(:+)
else
  ary = h.sort
  ary.slice!(n-k, h.length)
  puts ary.inject(:+)
end