n = gets.to_i
numbers = gets.split(" ").map(&:to_i)
# 箱にボールを入れる時にメモをする
memo = Array.new(n, 0)
answers = []
# 上から順番に箱に入れる
n.downto(1) do |i|
  tmp = 1
  count = 0
  # ボールが入っている箱を下から順に数え、countに加算する
  # ex. i が 3 なら、3, 6, 9, 12...の箱を全て調べる
  while tmp * i <= n
    count += memo[tmp * i - 1]
    tmp += 1
  end
  # count を 2 で割り、余りが箱に書かれた整数と一致しない場合はボールを入れる
  if count % 2 != numbers[i - 1]
    answers << i
    memo[i - 1] += 1
  end
end
puts answers.size
puts answers.join(" ") if answers.size != 0