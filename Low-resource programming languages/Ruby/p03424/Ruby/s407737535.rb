N = STDIN.gets.to_i
s = STDIN.gets.split(' ').uniq.size
puts s == 3 ? 'Three' : 'Four'