inputs = STDIN.readlines.map{|line|line.strip.split()}
input = inputs.shift
hh = input[0].to_i
ww = input[1].to_i
input = inputs.shift

h = input[0].to_i
w = input[1].to_i

answer = hh * ww - (hh * w + ww * h) + h * w
puts(answer)