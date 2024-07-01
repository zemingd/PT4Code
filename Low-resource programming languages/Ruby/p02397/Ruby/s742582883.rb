while true
  a,b = gets.chomp.split(" ").map &:to_i
  break if a == 0 and b == 0
  if a > b
    t = a; a = b; b = t
  end
  puts "#{a} #{b}"
end
  