n, x = gets.split(" ").map(&:to_i)
m = Array.new(n){gets.to_i}.sort
ans = 0
m.each do |i|
  if x >= i
    x -= i
    ans += 1
  else
    break
  end
end
puts ans + x / m[0]