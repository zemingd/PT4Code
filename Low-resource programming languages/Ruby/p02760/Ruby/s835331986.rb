a1s = gets.chomp.split(' ').map(&:to_i)
a2s = gets.chomp.split(' ').map(&:to_i)
a3s = gets.chomp.split(' ').map(&:to_i)
as = a1s + a2s + a3s
n = gets.chomp.to_i
bs = n.times.map { gets.chomp.to_i }

board = {}
as.each do |a|
    board[a] = false
end

bs.each do |b|
    next if board[b].nil?
    board[b] = true
end

result = as.map { |a| board[a] }

ans = 'No'
ans = 'Yes' if result[0] && result[1] && result[2]
ans = 'Yes' if result[0 + 3] && result[1 + 3] && result[2 + 3]
ans = 'Yes' if result[0 + 6] && result[1 + 6] && result[2 + 6]

ans = 'Yes' if result[0] && result[3] && result[6]
ans = 'Yes' if result[0 + 1] && result[3 + 1] && result[6 + 1]
ans = 'Yes' if result[0 + 2] && result[3 + 2] && result[6 + 2]

ans = 'Yes' if result[0] && result[4] && result[8]
ans = 'Yes' if result[2] && result[4] && result[6]

puts ans
