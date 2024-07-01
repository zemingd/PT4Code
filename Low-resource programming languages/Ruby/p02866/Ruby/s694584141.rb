N = gets.to_i
Di = gets.chomp.split(" ").map(&:to_i)

ans = 0
if Di[0] != 0 then
  ans = 0
else
  ans = 1
  (N-1).downto(1){|i|
    ans *= Di[i]
  }
end

p ans
