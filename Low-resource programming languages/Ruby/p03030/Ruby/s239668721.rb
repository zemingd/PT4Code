N = gets.chomp.to_i
rest = []
N.times do |n|
  a, b = gets.chomp.split()
  rest.push([a, b.to_i * -1, n+1])
end

rest.sort!

N.times do |n|
  puts rest[n][2]
end