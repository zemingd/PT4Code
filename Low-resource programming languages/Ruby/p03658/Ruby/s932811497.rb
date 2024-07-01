n, k = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

toyLength = 0

l = l.sort

(n-1).downto(n-k) do |i|
  toyLength += l[i]
end

puts toyLength
