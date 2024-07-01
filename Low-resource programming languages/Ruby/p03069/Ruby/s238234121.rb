WHITE = '.'
BLACK = '#'

N = gets.chomp.to_i
S = gets.chomp

whites = S.count(WHITE)


# 全部白パターンの要変更数
cumulative = [whites]

N.times do |i|
  if S[i] == BLACK
    cumulative[i + 1] = cumulative[i] + 1
  else
    cumulative[i + 1] = cumulative[i] - 1
  end
end

puts cumulative.min
