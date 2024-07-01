n = gets.to_i
a = gets.split(" ").map(&:to_i)
mul = 1
a.each do |i|
  unless mul > 10**18
    mul = -1
    break
  else
    mul *= i
  end
end
print mul