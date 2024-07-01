lines = $stdin.readlines
H, N = lines[0].split(' ').map(&:to_i)
a_list = lines[1].split(' ').map(&:to_i)

puts H <= a_list.reduce{|a, b| a + b} ? 'Yes' : 'No'