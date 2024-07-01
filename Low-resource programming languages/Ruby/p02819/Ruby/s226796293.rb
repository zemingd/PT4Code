x = gets.to_i
min = x
x.upto(1000000) do |_x|
  count = 0
  1.upto(_x) do |i|
    count += 1 if _x % i == 0
  end
  if count == 2
    puts _x
    exit
  end
end