n = gets.to_i
h = gets.chomp.split.map(&:to_i)

move = Array.new(n, 0)

(1..n).each do |i|
  mi = -i
  if mi == -1 then
    move[mi] = 0
    next
  end

  if h[mi] >= h[mi + 1] then    
    move[mi] = move[mi + 1] + 1
    next
  end

  move[mi] = 0
end

puts move.max
