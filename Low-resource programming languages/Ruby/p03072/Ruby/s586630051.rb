num = gets.to_i
mt = gets.chomp.split(" ").map(&:to_i)
a = 0
can = 0
for i in 0...num
  for j in 0..i
    break if mt[j] > mt[i]
    can += 1 if j == i-1
  end
end
puts can+1