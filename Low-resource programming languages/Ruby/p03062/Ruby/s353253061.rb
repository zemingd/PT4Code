class Array
  def abs; map{|k| k.abs } end
end

n = gets.to_s.to_i
a = gets.to_s.split.map{|t|t.to_i}

t = a.abs
m = t.min

ans = t.sum
if m == 0
  puts ans
  exit
end

if a.count{|k| k < 0}.odd?
  puts ans - 2 * m
else
  puts ans
end