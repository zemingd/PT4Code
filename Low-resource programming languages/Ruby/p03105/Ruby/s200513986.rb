inputs = STDIN.gets.chomp.split(' ').map(&:to_i)

time = inputs[1] / inputs[0]

if time > inputs[2]
  puts inputs[2]
else
  puts time
end
