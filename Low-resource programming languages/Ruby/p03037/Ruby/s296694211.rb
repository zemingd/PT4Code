N, M = gets.split(' ').map(&:to_i)

l, r = 1, 100000
M.times do
  al, ar = gets.split(' ').map(&:to_i)
  if al > l
    l = al 
  end
  if ar < r 
    r = ar
  end

  if l > ar || r < al
    l = 1
    r = 0
    break
  end
end
puts r - l + 1
