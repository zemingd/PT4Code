n, k = gets.split.map(&:to_i)

means = []
ans = 0

ps = gets.split.map {|num_s|
  num = num_s.to_i
  mean = num * (1 + num) / 2.0 / num
  means <<  mean
  a = (means.size - 1).downto(means.size - k).inject(0) {|acc, i|
    break acc if i < 0
    acc + means[i]
  }
  ans = ans < a ? a : ans 
}

puts ans
