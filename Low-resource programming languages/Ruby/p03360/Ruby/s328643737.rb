a,b,c = gets.split(" ").map(&:to_i).sort
t = gets.to_i
p a+b+c*(2**t)
