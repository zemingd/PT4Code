n = STDIN.gets.chomp.to_f
a = []
STDIN.each{|x|
  a.push(x.chomp.to_f)
  }
b = a.sort()
min = b[0]
cnt = (n/min).ceil + 4
puts cnt.to_i