N = gets.to_i
S = gets.chars

ans = 0
last = ""
S.each do |s|
  if s != last
    ans += 1
    last = s
  end
end
puts ans
