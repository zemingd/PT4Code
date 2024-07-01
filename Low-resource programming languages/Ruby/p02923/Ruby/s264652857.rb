n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)
max = 0
current = -1
memo = 0

h.each do |nxt|
  if (current >= nxt)
    memo += 1
    max = memo if (memo > max)
  else
    max = memo if (memo > max)
    memo = 0
  end
  current = nxt
end

puts max