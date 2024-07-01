io = STDIN
n=io.gets.chomp
nn=n.split(//)
puts nn==nn.reverse ? 'Yes' : 'No'
