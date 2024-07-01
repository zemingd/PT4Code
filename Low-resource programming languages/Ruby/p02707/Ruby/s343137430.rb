num = gets.to_i
a = gets.split.map(&:to_i)
n = []
a.each{
  n[_1 - 1] = n[_1 - 1].to_i + 1
}
num.times{puts n[_1].to_i}