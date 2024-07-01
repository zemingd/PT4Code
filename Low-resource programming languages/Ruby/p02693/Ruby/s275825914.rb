k = gets.to_s.to_i
a,b = gets.to_s.split.map{|t|t.to_i}
# m = Array.new(n){ gets.to_s.split.map{|t|t.to_i} }
# s = gets.to_s.chomp

a.upto(b) do |i|
  if i % k == 0
    puts "OK"
    exit
  end
end

puts "NG"