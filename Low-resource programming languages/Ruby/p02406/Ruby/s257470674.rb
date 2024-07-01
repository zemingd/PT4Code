n = gets.to_i
num = 1
n.times do
  if num % 3 == 0
    print num.to_s
    break if num == n
    print " "
  end
  num += 1
end

