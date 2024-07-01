input = STDIN.readline
length = input.split(nil)[0].to_i
width = input.split(nil)[1].to_i

puts "#{(length * width)} #{length * 2 + width * 2}"