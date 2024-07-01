n = gets.to_i
list = gets.split.map(&:to_i)
ans = 0

n.times do |i|
  flg = true
  (i-1).times do |j|
    if list[i] < list[j-1]
      flg = false
      break
    end
  end
  ans += 1 if flg
end

puts ans