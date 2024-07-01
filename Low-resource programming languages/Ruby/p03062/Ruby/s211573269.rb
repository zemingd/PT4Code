n = gets.to_i
a = gets.split.map(&:to_i)
cnt = a.select{|x| x <= 0}.size % 2
b = a.map{|x| x.abs}.sort_by{|x| x}
if cnt == 1
  c = b.shift
  puts b.inject(:+) - c
else
  puts b.inject(:+)
end