_ = gets
a = gets.chomp.split.map(&:to_i)
cur = 0
a.each do |i|
  cur += 1 if i == cur + 1
end
puts (cur == 0)? "-1" : a.size - cur