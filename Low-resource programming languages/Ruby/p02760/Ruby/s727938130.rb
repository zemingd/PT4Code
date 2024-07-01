# https://atcoder.jp/contests/abc157/tasks/abc157_b


Ass = Array.new(3) { gets.split.map(&:to_i) }
N = gets.to_i
bs = Array.new(N) { gets.to_i }

cond = Array.new(3) {Array.new(3) {false}}


N.times do |k|
  3.times do |i|
    3.times do |j|
      cond[i][j] = true if bs[k] == Ass[i][j]
    end
  end
end

def checkBingo(cond)
  3.times do |i|
    ans ||= (cond[i][0] && cond[i][1] && cond[i][2])
    ans ||= (cond[0][i] && cond[1][i] && cond[2][i])
  end

  ans ||= (cond[0][0] && cond[1][1] && cond[2][2])
  ans ||= (cond[0][2] && cond[1][1] && cond[2][0])

  return ans if ans
end

ans = checkBingo(cond)

puts ans ? 'Yes' : 'No'
