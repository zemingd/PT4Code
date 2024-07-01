gets
x=gets.split.map(&:to_i)
s=x.select{|x|x<0}.size
if s.even?
  puts x.map(&:abs).inject(&:+)
else
  x=x.map(&:abs)
  puts x.inject(&:+)-2*x.min
end
