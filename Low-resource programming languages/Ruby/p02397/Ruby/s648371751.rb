while line= gets
  (x,y) = line.split().map(&:to_i)
  break if x==0 && y==0
  puts x>y ? "#{y} #{x}" : "#{x} #{y}"
end