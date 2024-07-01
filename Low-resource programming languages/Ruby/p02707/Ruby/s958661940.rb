gets
a = gets.split.map(&:to_i)
n = []
a.each{
  n[_1 - 1] = n[_1 - 1].to_i + 1
}
n.each{puts _1}