b=gets().split.map(&:to_i)
puts "a "+(b[0]>b[1] ? ">" : b[0]<b[1] ? "<" :"==")+" b"