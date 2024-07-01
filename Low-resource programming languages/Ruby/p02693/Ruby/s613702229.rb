k = gets.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
a.upto(b) do |i|
  if i % k == 0
    puts "OK"
    exit
  end
end
puts "NG"