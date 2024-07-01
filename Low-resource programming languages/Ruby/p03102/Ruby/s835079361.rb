n, _m, c = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)

n_answers = 0
n.times do
  as = gets.chomp.split.map(&:to_i)
  if as.zip(bs).sum { |a, b| a * b } + c > 0
    n_answers += 1
  end
end

p n_answers
