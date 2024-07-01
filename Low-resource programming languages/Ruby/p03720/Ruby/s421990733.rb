N, M = gets.split.map(&:to_i)
ab = []
M.times {
  ab << gets.split.map(&:to_i)
}

a_b = []

ab.each do |abab|
  a_b << abab[0]
  a_b << abab[1]
end

N.times do |i|
count = a_b.count(i + 1)
p count
end