s = gets.chars
t = gets.chars
count = 0

s.each_with_index do |s, i|
  count += 1 if s == t[i]
end

p count
