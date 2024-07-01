N, L = gets.split.map(&:to_i)
s = []
N.times { s.push(gets.chomp) }
puts s.sort.join
