ary = gets.chomp.split('')

ans = 0

ary.each do |char|
  if char == '+'
    ans += 1
  else
    ans -= 1
  end
end

p ans
