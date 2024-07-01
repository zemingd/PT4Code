N, Q = gets.split(' ').map(&:to_i)
S = gets.chomp
l, r = [[], []]

Q.times do |i|
  l[i], r[i] = gets.split(' ').map(&:to_i)
end

Q.times do |i|
  puts S.slice((l[i] - 1)..(r[i] - 1)).scan('AC').length
end