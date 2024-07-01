N  = gets.to_i
as = gets.split.map(&:to_i)

half = N/2
ans = []

#
(N-1).downto(half) do | i |
  ans << i + 1 if as[i] == 1
end

#
(half - 1).downto(0) do | i |
  c = ans.count{ |a| a % (i + 1) == 0 } # "箱の数"の倍数を含む数
  x = c % 2
  if    x == 1 && as[i] == 0
    ans << i + 1
  elsif x == 0 && as[i] == 1
    ans << i + 1
  elsif x == 0 && as[i] == 0
    next
  elsif x == 0 && as[i] == 1
    next
  end
end
puts ans.size
puts ans.join(' ') if ans.size != 0