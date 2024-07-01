input = gets.split(" ").map do |i| i.to_i end
d = input[0] / input[1]
r = input[0] % input[1]
f = input[0].to_f / input[1].to_f
puts ("#{d} #{r} #{f.round(5)}")