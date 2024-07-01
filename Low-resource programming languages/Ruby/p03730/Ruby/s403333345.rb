a, b, c = gets.split.map(&:to_i)

1.upto b do |i|
  if a * i % b == c 
    puts("YES")
    exit
  end
end
puts("NO")