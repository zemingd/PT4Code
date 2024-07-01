x = gets.to_i
a = 100
1.upto(3760) do |i|
  a = a * 101 / 100
  if a >= x
    puts i
    exit
  end
end