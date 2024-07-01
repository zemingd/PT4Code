x = gets.to_i

h = {}
-1000.upto(100000) do |i|
  h[i ** 5] = i
end

-1000.upto(100000) do |a|
  b5 = a ** 5 - x;
  if h.key?(b5)
    puts "#{a} #{h[b5]}"
    break
  end
end
