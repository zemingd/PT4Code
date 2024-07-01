N, Y = gets.chomp.split.map(&:to_i)
Y /= 1000
ans = Array.new(3,-1)
for i in 0...N+1
  if ans[0] > 0
    break
  end
  for j in 0...N+1-i
    if ((Y-i*10-j*5) > N - i - j || (Y-i*10-j*5) < 0 || (Y-i*10-j*5) < N - i - j)
      next
    end
    ans = [i,j,Y-i*10-j*5]
    break
  end
end
puts ans.join(" ")