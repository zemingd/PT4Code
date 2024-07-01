line = STDIN.gets

input = line.split(' ')

i = [input[0].to_i, input[1].to_i, input[2].to_i]

l = i.sort

puts l[0].to_s + " " + l[1].to_s + " " + l[2].to_s