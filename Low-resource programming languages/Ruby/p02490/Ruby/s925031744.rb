while true
  a, b = gets.split.map &:to_i
  break if a == 0 && b == 0
  if a > b
    tmp = a
    a = b
    b = tmp
  end
  puts "#{a} #{b}"
end