n = gets.chomp.to_i
a, b = gets.split(" ").map(&:to_i)
ary = (a..b).to_a 

ary.each do |x|
  if x % n == 0
    puts "OK"
    exit
  end
end

puts "NG"
