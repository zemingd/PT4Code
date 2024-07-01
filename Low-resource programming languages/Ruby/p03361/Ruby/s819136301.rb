h, w = gets.split(' ').map(&:to_i)
table = Array.new(h){Array.new(w)}
table.map! { |row|
    row = gets.chomp.split('')
}
checker = Array.new(4)
can_draw = true
for row in 0...h do
    for col in 0...w do
        if table[row][col] == "#" then
            checker[0] = table[row - 1][col] if row > 0
            checker[1] = table[row + 1][col] if row < h - 1
            checker[2] = table[row][col - 1] if col > 0
            checker[3] = table[row][col + 1] if col < w - 1
            can_draw = false if checker.count("#") == 0
            p "行#{row} 列#{col} can_draw=#{can_draw}"
        end
    end
end
p can_draw ? "Yes" : "No"