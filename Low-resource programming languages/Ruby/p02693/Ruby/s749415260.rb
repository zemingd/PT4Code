k = gets.to_i
a, b = gets.split(" ").map(&:to_i)
flag = false
[*a..b].each do |i|
  if i % k == 0
    puts "OK"
    flag = true
    break
  end
end
puts "NG" unless flag