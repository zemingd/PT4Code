n = gets.to_i
s = gets.chomp.chars
sc = s.count
res = []
(n-1).times do |i|
  val = 0
  s[0..i].uniq.each do |j|
    val += 1 if s[i+1..sc].include?(j)
  end
  res << val
end
puts res.max