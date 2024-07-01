k = gets.to_i
a,b = gets.split.map(&:to_i)
num = 0
while (num <= b) do
  if num % k == 0 && a <= num && num <= b
    return puts "OK"
  end
  num += k
end
puts "NG"