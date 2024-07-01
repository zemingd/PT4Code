A = []
3.times do
  A.push(gets.split.map(&:to_i))
end
N = gets.to_i
A_cleared = [
  [0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]
]

N.times do
  tgt_num = gets.to_i
  3.times do |i|
    3.times do |j|
      if A[i][j] == tgt_num then
        A_cleared[i][j] = 1
      end
    end
  end
end

bingo = 0
3.times do |i|
  bingo += A_cleared[i][0] * A_cleared[i][1] * A_cleared[i][2]
end
3.times do |i|
  bingo += A_cleared[0][i] * A_cleared[1][i] * A_cleared[2][i]
end

bingo += A_cleared[0][0] * A_cleared[1][1] * A_cleared[2][2]
bingo += A_cleared[0][2] * A_cleared[1][1] * A_cleared[2][0]

puts bingo > 0 ? 'Yes' : 'No'
