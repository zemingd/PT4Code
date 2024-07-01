io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
abs=a.map(&:abs)
mar=a.select{|i|i<0}
if mar.size.even?
  puts abs.inject(:+)
else
  puts abs.inject(:+)-2*(abs.min)
end
