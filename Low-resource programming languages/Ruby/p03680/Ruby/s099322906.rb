n = gets.to_i
a = Array.new(n) { gets.to_i }
done = Array.new(n + 1, false)

i = 1
res = 0
n.times do |_|
  break if i == 2
  if done[i]
    res = -1
    break
  end
  
  done[i] = true
  i = a[i - 1]
  res += 1
end

puts res