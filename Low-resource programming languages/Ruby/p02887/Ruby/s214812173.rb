n = gets.to_i
s = gets.chomp.chars

ans = 0
tmp = nil
s.each do |c|
  if tmp != c
    ans += 1
    tmp = c
  end
end
puts ans