xs = []
while line = gets
  a, op, b = line.split(" ")
  break if op == "?"
  xs << line
end

xs.each {|x| puts eval(x)}