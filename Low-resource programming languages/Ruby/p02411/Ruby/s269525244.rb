ans = []
while true
  m, f, r = gets.chop.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1
  a = [m, f, r].to_a
  ans << a
end
ans.each do |i, j, k|
  case
    when i == 0 || j == 0
      puts "F"
    when 80 <= i + j
      puts "A"
    when 65 <= i + j && i+j < 80
      puts "B"
    when 50 <= i + j && i+j < 65 || 50 <= k
      puts "C"
    when 30 <= i + j && i+j < 50
      puts "D"
    when i + j < 30
      puts "E"
  end
end