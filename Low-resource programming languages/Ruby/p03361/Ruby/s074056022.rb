def main(board)
  board.each_with_index do |line, idxi|
    line.each_with_index do |box, idxj|
      next if box == '.'

      paintable = false
      pairs = [
        [idxi - 1, idxj],
        [idxi + 1, idxj],
        [idxi, idxj - 1],
        [idxi, idxj + 1]
      ]
      pairs.each do |i, j|
        next if i < 0 || j < 0
        break paintable = true if board.fetch(i, []).fetch(j, "") == '#'
      end
      return false unless paintable
    end
  end

  true
end

h, _ = gets.split(' ').map(&:to_i)
s = []
h.times do
  s.push gets.chomp.split('')
end
puts main(s) ? "Yes" : "No"