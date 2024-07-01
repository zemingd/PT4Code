_ = gets.to_i
a = gets.split(" ").map(&:to_i)
mul = 1
if a.include?(0)
  mul = 0
else
  a.each do |i|
    if mul <= 10**18
      mul *= i
    else
      break
    end
  end
end
print mul > 10**18 ? -1 : mul