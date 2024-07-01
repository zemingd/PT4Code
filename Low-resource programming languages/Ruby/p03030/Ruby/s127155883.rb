N = gets.chomp.to_i
rest = []
N.times do |n|
  a, b = gets.chomp.split()
  rest.push([a, b.to_i, n+1])
end

rest = rest.sort_by {|x| x[1] }.reverse.sort_by {|x| x[0] }


N.times do |n|
  puts rest[n][2]
end