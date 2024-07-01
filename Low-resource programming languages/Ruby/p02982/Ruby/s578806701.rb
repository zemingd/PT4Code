N, D = gets.chomp.split.map(&:to_i)

dots = []
N.times { dots << gets.chomp.split.map(&:to_i) }

ans = 0
N.times do |i|
  (i + 1).upto(N - 1) do |j|
    next if i == j
    square_diff_sum = dots[i].zip(dots[j]).map { |d1, d2| (d1 - d2)**2 }.inject(0, &:+)
    ans += 1 if square_diff_sum**0.5 == (square_diff_sum**0.5).to_i
  end
end

puts ans