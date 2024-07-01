n = gets.to_i
possibles_6 = []
possibles_9 = []

1.upto(10) do |index|
  tmp = 6 ** index
  tmp <= 100000 ? possibles_6.unshift(tmp) : break
end

1.upto(10) do |index|
  tmp = 9 ** index
  tmp <= 100000 ? possibles_9.unshift(tmp) : break
end

que = [[n, 0]]
until que.empty?
  rest, count = que.shift
  if rest == 0
    ans = count
    break
  end
  if rest >= 9
    que << [rest - possibles_9.bsearch { |item| item <= rest }, count + 1]
  end
  if rest >= 6
    que << [rest - possibles_6.bsearch { |item| item <= rest }, count + 1]
  end
  if rest < 6
    que << [rest - 1, count + 1]
  end
end
puts ans