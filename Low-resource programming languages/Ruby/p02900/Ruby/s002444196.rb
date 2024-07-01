def yakusuu(n)
  arr = []
  1.upto(n/2) do |i|
    if n % i == 0 then
      arr.push(i)
    end
  end
  return arr
end

a,b = gets.chomp.split(" ").map(&:to_i)
a_y = yakusuu(a)
b_y = yakusuu(b)
k = a_y & b_y
result = []
k.each do |i|
  flag = true
  k.each do |j|
    if j != 1 && i != j && i % j == 0 then
      flag = false
    end
  end
  if flag then
    result.push(i)
  end
end
puts result.length
