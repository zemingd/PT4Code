def read_i
  gets.chomp.split(' ').map(&:to_i)
end

n = read_i[0]

a = []
5.times do |i|
  a << read_i[0]
end

puts (n / a.min) + 5