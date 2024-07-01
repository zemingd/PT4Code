n,m=gets.split.map(&:to_i)
x=gets.split.map(&:to_i)
if n>=m
  puts 0
  exit
end
x.sort!
diffs=x.each_cons(2).map{|a,b|b-a}.sort
puts diffs[0...m-n].inject(:+)