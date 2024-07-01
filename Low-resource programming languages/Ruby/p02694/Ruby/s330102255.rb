def solve
  x = gets.to_i
  flg = true
  y = 100
  cnt = 1
  while flg do
    y = (y + (y * 0.01)).to_i
    if y >= x
      return cnt
    end

    cnt += 1
  end
end
print solve