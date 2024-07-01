n = gets.to_i
s = []
n.times do
  a = gets.chomp
  s << a
end
puts s.group_by { |e| e }.sort_by { |e, v| -v.size }.map(&:first).first