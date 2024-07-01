arr = [[], []]
arr[0][0], arr[0][1], arr[1][0], arr[1][1] = gets.chomp.split.map(&:to_i)
turn = 0
while true
    arr[1 - turn][0] -= arr[turn][1]
    break if arr[1 - turn][0] <= 0
    turn = 1 - turn
end
puts (turn == 0 ? "Yes" : "No")