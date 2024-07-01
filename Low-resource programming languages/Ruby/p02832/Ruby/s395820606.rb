N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
i = 1
A.each do |a|
  if a == i
    i += 1
  else
    ans += 1
  end
end
puts ans == N ? -1 : ans