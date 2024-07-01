n, q = gets.split.map(&:to_i)
s = gets.chomp

ans = []
(s.length-1).times do |c|
  if s[c..(c+1)] == "AC"
    ans << c + 1
  end
end

q.times do 
  l, r = gets.split.map(&:to_i)
  #p ans.select{|i| l <= i && i <= r}
  puts ans.select{|i| l <= i && i < r}.count
end