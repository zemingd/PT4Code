x, y = gets.split

n = (x+y).to_i

res = false
(Math.sqrt(n).to_i +  1).times do |i|
  if i * i == n then
    res = true
    break
  end
end

puts res ? "Yes" : "No  "
