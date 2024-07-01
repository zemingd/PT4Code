N, L = gets.chomp.split.map(&:to_i)
s = []
N.times do
  s << gets.chomp
end
s = s.sort
puts s.join('')