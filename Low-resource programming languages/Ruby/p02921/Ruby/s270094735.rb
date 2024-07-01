s = gets.chomp.chars
t = gets.chomp.chars
count = 0
s.each.with_index do |w,i|
  if w == t[i]
    count += 1
  end
end
puts count