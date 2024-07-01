N = gets.to_i
ls = gets.split(' ').map(&:to_i).sort
count = 0
(0..(N - 3)).each do |a|
  ((a + 1)..(N - 2)).each do |b|
    ((b + 1)..(N - 1)).each do |c|
      count += 1 if (ls[b] - ls[a]).abs < ls[c] && ls[c] < ls[a] + ls[b]
    end
  end
end
p count