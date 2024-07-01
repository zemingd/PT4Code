N, L = gets.split.map(&:to_i)
s = []
N.times do
  s << gets.chomp
end
puts s.sort.join