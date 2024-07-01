n = gets.to_i
s = gets.chomp
prev = ''
ans = 0

s.each_char do |c|
  if c != prev
    prev = c
    ans += 1
  end
end

puts ans