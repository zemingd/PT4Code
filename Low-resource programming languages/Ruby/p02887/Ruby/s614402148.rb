_n = gets.to_i
s = gets.chomp
prev = nil
ary = []
s.chars do |c|
  ary << c unless c == prev
  prev = c
end
puts ary.count