n = STDIN.gets.chomp.to_i
a = []
STDIN.each{|x|
  a.push(x.chomp.to_i)
  }
b = a.sort()
min = b[0]
cnt = (n/min).ceil + 5
puts cnt