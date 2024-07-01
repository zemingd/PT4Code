n, l = gets.split.map(&:to_i)
s = []
n.times do
  s << gets.strip
end
puts s.sort.inject("") { |ret,i| ret + i }
