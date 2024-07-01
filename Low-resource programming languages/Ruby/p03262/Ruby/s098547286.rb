n, x = gets.chomp.split(" ").map(&:to_i)
xx = gets.chomp.split(" ").map(&:to_i).sort

i = xx.bsearch_index{|a| a > x}

if i.nil?
  puts x - xx[-1]
elsif i == 0
  puts xx[0] - x
else
  puts [xx[i] - x, x - xx[i - 1]].min
end