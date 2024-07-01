n, q = gets.split().map(&:to_i)
s = gets.chomp

lr = []

q.times do 
  lr << gets.split().map(&:to_i)
end

array = []

s.size.times do |i|
  array << s[0..i].scan("AC").count
end

lr.each do |l,r|
  puts array[r-1] - array[l-1]
end

