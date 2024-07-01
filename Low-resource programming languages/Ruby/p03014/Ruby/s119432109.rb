H, W = gets.split.map(&:to_i)

G = []

H.times do
  a = Array.new(W)
  line = gets.chomp + '#'
  i, j = 0, 0
  while i <= W
    if line[i] == '#'
      if j < i
        c = i - j
        k = j
        while k < i
          a[k] = c
          k += 1
        end
      end 
      i += 1
      j = i
    else
      i += 1
    end
  end
  G << a
end 
G << Array.new(W)

ans = 0
for x in (0...W)
  i, j = 0, 0
  local_max = 0
  while i <= H
    v = G[i][x]
    if v.nil?
      if j < i
        local_max += (i - j)
        ans = local_max if ans < local_max
        local_max = 0
      end 
      i += 1
      j = i
    else
      local_max = v if local_max < v  
      i += 1
    end 
  end 
end
puts ans - 1