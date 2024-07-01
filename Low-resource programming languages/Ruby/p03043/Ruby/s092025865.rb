N,K = gets.chomp.split(" ").map(&:to_i);

win = []

N.times do |n|
  count = 0
  score = n + 1
  while score <= K - 1  do
    score *= 2
    count += 1
  end
  if count == 0
    win << N
  else
    win <<  2**count * N
  end
end

win_win = 0.to_f

win.each do |num|
  win_win += ( 1 / num.to_f )
end

puts win_win