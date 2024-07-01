_ = $stdin.gets
kinds = $stdin.gets.chomp.split(' ').uniq.length
print kinds == 3 ? 'Three' : 'Four'