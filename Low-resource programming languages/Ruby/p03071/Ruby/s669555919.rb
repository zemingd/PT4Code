A,B = gets.split.map(&:to_i)
ans = 0
2.times do |i|
  if A > B
    ans += A
    A -= 1
  else
    ans += B
    B -= 1
  end
end
puts ans