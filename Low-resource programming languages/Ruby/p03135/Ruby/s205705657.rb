input = STDIN.readline
times = input.split().map{|s|s.to_f}
t = times[0]
x = times[1]
puts(t / x)