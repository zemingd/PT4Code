#x個の中から2個取る組み合わせの数
def c(x)
  return 0 if x == 0 || x == 1
  x * (x - 1) / 2
end

gets
balls = gets.split.map(&:to_i)

numbers_table = Hash.new(0)
balls.each {|n| numbers_table[n] += 1}

sum = numbers_table.map {|n, i| c(i)}.inject(&:+)

balls.each do |n|
  puts sum - c(numbers_table[n]) + c(numbers_table[n] - 1)
end