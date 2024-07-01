a, b, c = gets.chomp.split(' ').map(&:to_i)
executed = Hash.new(false)
current = a
find = false
loop do
  mod = current % b
  break if executed[mod]
  executed[mod] = true
  find = true if mod == c
  current += a
end
puts find ? 'YES' : 'NO'