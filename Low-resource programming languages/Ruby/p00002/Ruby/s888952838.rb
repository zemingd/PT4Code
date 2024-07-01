while a,b = gets.split(" ").map(&:to_i)
  sum = a+b
  c = 0
  while sum / 10 ** c != 0
    c++
  end
  puts(c-1)
end