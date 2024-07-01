lines = $stdin.readlines
H, N = lines[0].split(' ').map(&:to_i)
As = lines[1].split(' ').map(&:to_i)

puts H <= As.sum ? 'Yes' : 'No'
