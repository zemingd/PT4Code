n, q = gets.split().map(&:to_i)
s = gets.chomp

ans = []

q.times do 
  l, r = gets.split().map(&:to_i)
  ans << s[l-1..r-1].scan("AC").count
end

ans.each do |i|
  puts i
end