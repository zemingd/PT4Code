n = gets.to_i
a = gets.split.map(&:to_i).take(n)
b = gets.split.map(&:to_i).take(n)
c = gets.split.map(&:to_i).take(n - 1)

result = 0
prev = -999

a.each do |i|
  # b列の料理を食べる
  current = i - 1
  result += b[current]

  # 直前に1つ前の料理を食べていたら直前のc列の満足度を得られる
  if prev + 1 == current
    result += c[prev]
  end

  # 直前に食べた料理の添字を記憶しておく
  prev = current
end

puts result